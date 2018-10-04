dofile("httpserver-functions.lua")
dofile("motorControl.lua")

-- Create server and listen on port 80
server=net.createServer(net.TCP, 80)
server:listen(80, function(conn)
	-- print(conn:getpeer())
	conn:on("receive", requestHandler)
end)

responds = {}
responds["/"] = motorControl