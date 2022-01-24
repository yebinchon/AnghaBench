#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  player; } ;
typedef  TYPE_1__ mobj_t ;
struct TYPE_18__ {int special; int flags; } ;
typedef  TYPE_2__ line_t ;
typedef  int boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int ML_SECRET ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  blazeClose ; 
 int /*<<< orphan*/  blazeDWUS ; 
 int /*<<< orphan*/  blazeOpen ; 
 int /*<<< orphan*/  blazeRaise ; 
 int /*<<< orphan*/  build8 ; 
 int /*<<< orphan*/  close ; 
 int /*<<< orphan*/  crushAndRaise ; 
 int /*<<< orphan*/  downWaitUpStay ; 
 int /*<<< orphan*/  lowerFloor ; 
 int /*<<< orphan*/  lowerFloorToLowest ; 
 int /*<<< orphan*/  lowerToFloor ; 
 int /*<<< orphan*/  normal ; 
 int /*<<< orphan*/  open ; 
 int /*<<< orphan*/  raiseAndChange ; 
 int /*<<< orphan*/  raiseFloor ; 
 int /*<<< orphan*/  raiseFloor512 ; 
 int /*<<< orphan*/  raiseFloorCrush ; 
 int /*<<< orphan*/  raiseFloorToNearest ; 
 int /*<<< orphan*/  raiseFloorTurbo ; 
 int /*<<< orphan*/  raiseToNearestAndChange ; 
 int /*<<< orphan*/  turbo16 ; 
 int /*<<< orphan*/  turboLower ; 

boolean
FUNC12
( mobj_t*	thing,
  line_t*	line,
  int		side )
{               

    // Err...
    // Use the back sides of VERY SPECIAL lines...
    if (side)
    {
	switch(line->special)
	{
	  case 124:
	    // Sliding door open&close
	    // UNUSED?
	    break;

	  default:
	    return false;
	    break;
	}
    }

    
    // Switches that other things can activate.
    if (!thing->player)
    {
	// never open secret doors
	if (line->flags & ML_SECRET)
	    return false;
	
	switch(line->special)
	{
	  case 1: 	// MANUAL DOOR RAISE
	  case 32:	// MANUAL BLUE
	  case 33:	// MANUAL RED
	  case 34:	// MANUAL YELLOW
	    break;
	    
	  default:
	    return false;
	    break;
	}
    }

    
    // do something  
    switch (line->special)
    {
	// MANUALS
      case 1:		// Vertical Door
      case 26:		// Blue Door/Locked
      case 27:		// Yellow Door /Locked
      case 28:		// Red Door /Locked

      case 31:		// Manual door open
      case 32:		// Blue locked door open
      case 33:		// Red locked door open
      case 34:		// Yellow locked door open

      case 117:		// Blazing door raise
      case 118:		// Blazing door open
	FUNC8 (line, thing);
	break;
	
	//UNUSED - Door Slide Open&Close
	// case 124:
	// EV_SlidingDoor (line, thing);
	// break;

	// SWITCHES
      case 7:
	// Build Stairs
	if (FUNC0(line,build8))
	    FUNC11(line,0);
	break;

      case 9:
	// Change Donut
	if (FUNC2(line))
	    FUNC11(line,0);
	break;
	
      case 11:
	// Exit level
	FUNC11(line,0);
	FUNC9 ();
	break;
	
      case 14:
	// Raise Floor 32 and change texture
	if (FUNC6(line,raiseAndChange,32))
	    FUNC11(line,0);
	break;
	
      case 15:
	// Raise Floor 24 and change texture
	if (FUNC6(line,raiseAndChange,24))
	    FUNC11(line,0);
	break;
	
      case 18:
	// Raise Floor to next highest floor
	if (FUNC4(line, raiseFloorToNearest))
	    FUNC11(line,0);
	break;
	
      case 20:
	// Raise Plat next highest floor and change texture
	if (FUNC6(line,raiseToNearestAndChange,0))
	    FUNC11(line,0);
	break;
	
      case 21:
	// PlatDownWaitUpStay
	if (FUNC6(line,downWaitUpStay,0))
	    FUNC11(line,0);
	break;
	
      case 23:
	// Lower Floor to Lowest
	if (FUNC4(line,lowerFloorToLowest))
	    FUNC11(line,0);
	break;
	
      case 29:
	// Raise Door
	if (FUNC3(line,normal))
	    FUNC11(line,0);
	break;
	
      case 41:
	// Lower Ceiling to Floor
	if (FUNC1(line,lowerToFloor))
	    FUNC11(line,0);
	break;
	
      case 71:
	// Turbo Lower Floor
	if (FUNC4(line,turboLower))
	    FUNC11(line,0);
	break;
	
      case 49:
	// Ceiling Crush And Raise
	if (FUNC1(line,crushAndRaise))
	    FUNC11(line,0);
	break;
	
      case 50:
	// Close Door
	if (FUNC3(line,close))
	    FUNC11(line,0);
	break;
	
      case 51:
	// Secret EXIT
	FUNC11(line,0);
	FUNC10 ();
	break;
	
      case 55:
	// Raise Floor Crush
	if (FUNC4(line,raiseFloorCrush))
	    FUNC11(line,0);
	break;
	
      case 101:
	// Raise Floor
	if (FUNC4(line,raiseFloor))
	    FUNC11(line,0);
	break;
	
      case 102:
	// Lower Floor to Surrounding floor height
	if (FUNC4(line,lowerFloor))
	    FUNC11(line,0);
	break;
	
      case 103:
	// Open Door
	if (FUNC3(line,open))
	    FUNC11(line,0);
	break;
	
      case 111:
	// Blazing Door Raise (faster than TURBO!)
	if (FUNC3 (line,blazeRaise))
	    FUNC11(line,0);
	break;
	
      case 112:
	// Blazing Door Open (faster than TURBO!)
	if (FUNC3 (line,blazeOpen))
	    FUNC11(line,0);
	break;
	
      case 113:
	// Blazing Door Close (faster than TURBO!)
	if (FUNC3 (line,blazeClose))
	    FUNC11(line,0);
	break;
	
      case 122:
	// Blazing PlatDownWaitUpStay
	if (FUNC6(line,blazeDWUS,0))
	    FUNC11(line,0);
	break;
	
      case 127:
	// Build Stairs Turbo 16
	if (FUNC0(line,turbo16))
	    FUNC11(line,0);
	break;
	
      case 131:
	// Raise Floor Turbo
	if (FUNC4(line,raiseFloorTurbo))
	    FUNC11(line,0);
	break;
	
      case 133:
	// BlzOpenDoor BLUE
      case 135:
	// BlzOpenDoor RED
      case 137:
	// BlzOpenDoor YELLOW
	if (FUNC5 (line,blazeOpen,thing))
	    FUNC11(line,0);
	break;
	
      case 140:
	// Raise Floor 512
	if (FUNC4(line,raiseFloor512))
	    FUNC11(line,0);
	break;
	
	// BUTTONS
      case 42:
	// Close Door
	if (FUNC3(line,close))
	    FUNC11(line,1);
	break;
	
      case 43:
	// Lower Ceiling to Floor
	if (FUNC1(line,lowerToFloor))
	    FUNC11(line,1);
	break;
	
      case 45:
	// Lower Floor to Surrounding floor height
	if (FUNC4(line,lowerFloor))
	    FUNC11(line,1);
	break;
	
      case 60:
	// Lower Floor to Lowest
	if (FUNC4(line,lowerFloorToLowest))
	    FUNC11(line,1);
	break;
	
      case 61:
	// Open Door
	if (FUNC3(line,open))
	    FUNC11(line,1);
	break;
	
      case 62:
	// PlatDownWaitUpStay
	if (FUNC6(line,downWaitUpStay,1))
	    FUNC11(line,1);
	break;
	
      case 63:
	// Raise Door
	if (FUNC3(line,normal))
	    FUNC11(line,1);
	break;
	
      case 64:
	// Raise Floor to ceiling
	if (FUNC4(line,raiseFloor))
	    FUNC11(line,1);
	break;
	
      case 66:
	// Raise Floor 24 and change texture
	if (FUNC6(line,raiseAndChange,24))
	    FUNC11(line,1);
	break;
	
      case 67:
	// Raise Floor 32 and change texture
	if (FUNC6(line,raiseAndChange,32))
	    FUNC11(line,1);
	break;
	
      case 65:
	// Raise Floor Crush
	if (FUNC4(line,raiseFloorCrush))
	    FUNC11(line,1);
	break;
	
      case 68:
	// Raise Plat to next highest floor and change texture
	if (FUNC6(line,raiseToNearestAndChange,0))
	    FUNC11(line,1);
	break;
	
      case 69:
	// Raise Floor to next highest floor
	if (FUNC4(line, raiseFloorToNearest))
	    FUNC11(line,1);
	break;
	
      case 70:
	// Turbo Lower Floor
	if (FUNC4(line,turboLower))
	    FUNC11(line,1);
	break;
	
      case 114:
	// Blazing Door Raise (faster than TURBO!)
	if (FUNC3 (line,blazeRaise))
	    FUNC11(line,1);
	break;
	
      case 115:
	// Blazing Door Open (faster than TURBO!)
	if (FUNC3 (line,blazeOpen))
	    FUNC11(line,1);
	break;
	
      case 116:
	// Blazing Door Close (faster than TURBO!)
	if (FUNC3 (line,blazeClose))
	    FUNC11(line,1);
	break;
	
      case 123:
	// Blazing PlatDownWaitUpStay
	if (FUNC6(line,blazeDWUS,0))
	    FUNC11(line,1);
	break;
	
      case 132:
	// Raise Floor Turbo
	if (FUNC4(line,raiseFloorTurbo))
	    FUNC11(line,1);
	break;
	
      case 99:
	// BlzOpenDoor BLUE
      case 134:
	// BlzOpenDoor RED
      case 136:
	// BlzOpenDoor YELLOW
	if (FUNC5 (line,blazeOpen,thing))
	    FUNC11(line,1);
	break;
	
      case 138:
	// Light Turn On
	FUNC7(line,255);
	FUNC11(line,1);
	break;
	
      case 139:
	// Light Turn Off
	FUNC7(line,35);
	FUNC11(line,1);
	break;
			
    }
	
    return true;
}