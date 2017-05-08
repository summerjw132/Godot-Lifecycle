extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)                     #Access the game loop
	
	

func _process(delta):                     #Override the game loop process 
	
	
	var curPos = self.get_pos()           #Get the node's position
	curPos.x += 100 + delta               #Assign the new position
	
	#If node leaves the right side of the screen, loop to the other side
	if(curPos.x > self.get_viewport_rect().size.width 
	+ self.get_viewport_rect().size.width/2 ):
		curPos.x = -self.get_item_rect().size.width/2
	
	#Update the node's new position
	self.set_pos(curPos)                  
