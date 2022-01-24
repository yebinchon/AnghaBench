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
struct TYPE_17__ {int type; int /*<<< orphan*/  player; } ;
typedef  TYPE_1__ mobj_t ;
struct TYPE_18__ {int special; } ;
typedef  TYPE_2__ line_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
#define  MT_BFG 133 
#define  MT_BRUISERSHOT 132 
#define  MT_HEADSHOT 131 
#define  MT_PLASMA 130 
#define  MT_ROCKET 129 
#define  MT_TROOPSHOT 128 
 int /*<<< orphan*/  blazeClose ; 
 int /*<<< orphan*/  blazeDWUS ; 
 int /*<<< orphan*/  blazeOpen ; 
 int /*<<< orphan*/  blazeRaise ; 
 int /*<<< orphan*/  build8 ; 
 int /*<<< orphan*/  close ; 
 int /*<<< orphan*/  close30ThenOpen ; 
 int /*<<< orphan*/  crushAndRaise ; 
 int /*<<< orphan*/  downWaitUpStay ; 
 int /*<<< orphan*/  fastCrushAndRaise ; 
 TYPE_2__* lines ; 
 int /*<<< orphan*/  lowerAndChange ; 
 int /*<<< orphan*/  lowerAndCrush ; 
 int /*<<< orphan*/  lowerFloor ; 
 int /*<<< orphan*/  lowerFloorToLowest ; 
 int /*<<< orphan*/  normal ; 
 int /*<<< orphan*/  open ; 
 int /*<<< orphan*/  perpetualRaise ; 
 int /*<<< orphan*/  raiseFloor ; 
 int /*<<< orphan*/  raiseFloor24 ; 
 int /*<<< orphan*/  raiseFloor24AndChange ; 
 int /*<<< orphan*/  raiseFloorCrush ; 
 int /*<<< orphan*/  raiseFloorToNearest ; 
 int /*<<< orphan*/  raiseFloorTurbo ; 
 int /*<<< orphan*/  raiseToHighest ; 
 int /*<<< orphan*/  raiseToNearestAndChange ; 
 int /*<<< orphan*/  raiseToTexture ; 
 int /*<<< orphan*/  silentCrushAndRaise ; 
 int /*<<< orphan*/  turbo16 ; 
 int /*<<< orphan*/  turboLower ; 

void
FUNC13
( int		linenum,
  int		side,
  mobj_t*	thing )
{
    line_t*	line;
    int		ok;

    line = &lines[linenum];
    
    //	Triggers that other things can activate
    if (!thing->player)
    {
	// Things that should NOT trigger specials...
	switch(thing->type)
	{
	  case MT_ROCKET:
	  case MT_PLASMA:
	  case MT_BFG:
	  case MT_TROOPSHOT:
	  case MT_HEADSHOT:
	  case MT_BRUISERSHOT:
	    return;
	    break;
	    
	  default: break;
	}
		
	ok = 0;
	switch(line->special)
	{
	  case 39:	// TELEPORT TRIGGER
	  case 97:	// TELEPORT RETRIGGER
	  case 125:	// TELEPORT MONSTERONLY TRIGGER
	  case 126:	// TELEPORT MONSTERONLY RETRIGGER
	  case 4:	// RAISE DOOR
	  case 10:	// PLAT DOWN-WAIT-UP-STAY TRIGGER
	  case 88:	// PLAT DOWN-WAIT-UP-STAY RETRIGGER
	    ok = 1;
	    break;
	}
	if (!ok)
	    return;
    }

    
    // Note: could use some const's here.
    switch (line->special)
    {
	// TRIGGERS.
	// All from here to RETRIGGERS.
      case 2:
	// Open Door
	FUNC3(line,open);
	line->special = 0;
	break;

      case 3:
	// Close Door
	FUNC3(line,close);
	line->special = 0;
	break;

      case 4:
	// Raise Door
	FUNC3(line,normal);
	line->special = 0;
	break;
	
      case 5:
	// Raise Floor
	FUNC4(line,raiseFloor);
	line->special = 0;
	break;
	
      case 6:
	// Fast Ceiling Crush & Raise
	FUNC2(line,fastCrushAndRaise);
	line->special = 0;
	break;
	
      case 8:
	// Build Stairs
	FUNC0(line,build8);
	line->special = 0;
	break;
	
      case 10:
	// PlatDownWaitUp
	FUNC5(line,downWaitUpStay,0);
	line->special = 0;
	break;
	
      case 12:
	// Light Turn On - brightest near
	FUNC6(line,0);
	line->special = 0;
	break;
	
      case 13:
	// Light Turn On 255
	FUNC6(line,255);
	line->special = 0;
	break;
	
      case 16:
	// Close Door 30
	FUNC3(line,close30ThenOpen);
	line->special = 0;
	break;
	
      case 17:
	// Start Light Strobing
	FUNC7(line);
	line->special = 0;
	break;
	
      case 19:
	// Lower Floor
	FUNC4(line,lowerFloor);
	line->special = 0;
	break;
	
      case 22:
	// Raise floor to nearest height and change texture
	FUNC5(line,raiseToNearestAndChange,0);
	line->special = 0;
	break;
	
      case 25:
	// Ceiling Crush and Raise
	FUNC2(line,crushAndRaise);
	line->special = 0;
	break;
	
      case 30:
	// Raise floor to shortest texture height
	//  on either side of lines.
	FUNC4(line,raiseToTexture);
	line->special = 0;
	break;
	
      case 35:
	// Lights Very Dark
	FUNC6(line,35);
	line->special = 0;
	break;
	
      case 36:
	// Lower Floor (TURBO)
	FUNC4(line,turboLower);
	line->special = 0;
	break;
	
      case 37:
	// LowerAndChange
	FUNC4(line,lowerAndChange);
	line->special = 0;
	break;
	
      case 38:
	// Lower Floor To Lowest
	FUNC4( line, lowerFloorToLowest );
	line->special = 0;
	break;
	
      case 39:
	// TELEPORT!
	FUNC9( line, side, thing );
	line->special = 0;
	break;

      case 40:
	// RaiseCeilingLowerFloor
	FUNC2( line, raiseToHighest );
	FUNC4( line, lowerFloorToLowest );
	line->special = 0;
	break;
	
      case 44:
	// Ceiling Crush
	FUNC2( line, lowerAndCrush );
	line->special = 0;
	break;
	
      case 52:
	// EXIT!
	FUNC11 ();
	break;
	
      case 53:
	// Perpetual Platform Raise
	FUNC5(line,perpetualRaise,0);
	line->special = 0;
	break;
	
      case 54:
	// Platform Stop
	FUNC8(line);
	line->special = 0;
	break;

      case 56:
	// Raise Floor Crush
	FUNC4(line,raiseFloorCrush);
	line->special = 0;
	break;

      case 57:
	// Ceiling Crush Stop
	FUNC1(line);
	line->special = 0;
	break;
	
      case 58:
	// Raise Floor 24
	FUNC4(line,raiseFloor24);
	line->special = 0;
	break;

      case 59:
	// Raise Floor 24 And Change
	FUNC4(line,raiseFloor24AndChange);
	line->special = 0;
	break;
	
      case 104:
	// Turn lights off in sector(tag)
	FUNC10(line);
	line->special = 0;
	break;
	
      case 108:
	// Blazing Door Raise (faster than TURBO!)
	FUNC3 (line,blazeRaise);
	line->special = 0;
	break;
	
      case 109:
	// Blazing Door Open (faster than TURBO!)
	FUNC3 (line,blazeOpen);
	line->special = 0;
	break;
	
      case 100:
	// Build Stairs Turbo 16
	FUNC0(line,turbo16);
	line->special = 0;
	break;
	
      case 110:
	// Blazing Door Close (faster than TURBO!)
	FUNC3 (line,blazeClose);
	line->special = 0;
	break;

      case 119:
	// Raise floor to nearest surr. floor
	FUNC4(line,raiseFloorToNearest);
	line->special = 0;
	break;
	
      case 121:
	// Blazing PlatDownWaitUpStay
	FUNC5(line,blazeDWUS,0);
	line->special = 0;
	break;
	
      case 124:
	// Secret EXIT
	FUNC12 ();
	break;
		
      case 125:
	// TELEPORT MonsterONLY
	if (!thing->player)
	{
	    FUNC9( line, side, thing );
	    line->special = 0;
	}
	break;
	
      case 130:
	// Raise Floor Turbo
	FUNC4(line,raiseFloorTurbo);
	line->special = 0;
	break;
	
      case 141:
	// Silent Ceiling Crush & Raise
	FUNC2(line,silentCrushAndRaise);
	line->special = 0;
	break;
	
	// RETRIGGERS.  All from here till end.
      case 72:
	// Ceiling Crush
	FUNC2( line, lowerAndCrush );
	break;

      case 73:
	// Ceiling Crush and Raise
	FUNC2(line,crushAndRaise);
	break;

      case 74:
	// Ceiling Crush Stop
	FUNC1(line);
	break;
	
      case 75:
	// Close Door
	FUNC3(line,close);
	break;
	
      case 76:
	// Close Door 30
	FUNC3(line,close30ThenOpen);
	break;
	
      case 77:
	// Fast Ceiling Crush & Raise
	FUNC2(line,fastCrushAndRaise);
	break;
	
      case 79:
	// Lights Very Dark
	FUNC6(line,35);
	break;
	
      case 80:
	// Light Turn On - brightest near
	FUNC6(line,0);
	break;
	
      case 81:
	// Light Turn On 255
	FUNC6(line,255);
	break;
	
      case 82:
	// Lower Floor To Lowest
	FUNC4( line, lowerFloorToLowest );
	break;
	
      case 83:
	// Lower Floor
	FUNC4(line,lowerFloor);
	break;

      case 84:
	// LowerAndChange
	FUNC4(line,lowerAndChange);
	break;

      case 86:
	// Open Door
	FUNC3(line,open);
	break;
	
      case 87:
	// Perpetual Platform Raise
	FUNC5(line,perpetualRaise,0);
	break;
	
      case 88:
	// PlatDownWaitUp
	FUNC5(line,downWaitUpStay,0);
	break;
	
      case 89:
	// Platform Stop
	FUNC8(line);
	break;
	
      case 90:
	// Raise Door
	FUNC3(line,normal);
	break;
	
      case 91:
	// Raise Floor
	FUNC4(line,raiseFloor);
	break;
	
      case 92:
	// Raise Floor 24
	FUNC4(line,raiseFloor24);
	break;
	
      case 93:
	// Raise Floor 24 And Change
	FUNC4(line,raiseFloor24AndChange);
	break;
	
      case 94:
	// Raise Floor Crush
	FUNC4(line,raiseFloorCrush);
	break;
	
      case 95:
	// Raise floor to nearest height
	// and change texture.
	FUNC5(line,raiseToNearestAndChange,0);
	break;
	
      case 96:
	// Raise floor to shortest texture height
	// on either side of lines.
	FUNC4(line,raiseToTexture);
	break;
	
      case 97:
	// TELEPORT!
	FUNC9( line, side, thing );
	break;
	
      case 98:
	// Lower Floor (TURBO)
	FUNC4(line,turboLower);
	break;

      case 105:
	// Blazing Door Raise (faster than TURBO!)
	FUNC3 (line,blazeRaise);
	break;
	
      case 106:
	// Blazing Door Open (faster than TURBO!)
	FUNC3 (line,blazeOpen);
	break;

      case 107:
	// Blazing Door Close (faster than TURBO!)
	FUNC3 (line,blazeClose);
	break;

      case 120:
	// Blazing PlatDownWaitUpStay.
	FUNC5(line,blazeDWUS,0);
	break;
	
      case 126:
	// TELEPORT MonsterONLY.
	if (!thing->player)
	    FUNC9( line, side, thing );
	break;
	
      case 128:
	// Raise To Nearest Floor
	FUNC4(line,raiseFloorToNearest);
	break;
	
      case 129:
	// Raise Floor Turbo
	FUNC4(line,raiseFloorTurbo);
	break;
    }
}