#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cursory; int /*<<< orphan*/  cursorx; } ;
struct TYPE_3__ {int /*<<< orphan*/  cursorY; int /*<<< orphan*/  cursorX; } ;

/* Variables and functions */
#define  CG_CONSOLE_COMMAND 136 
#define  CG_CROSSHAIR_PLAYER 135 
 int FUNC0 () ; 
 int FUNC1 () ; 
#define  CG_DRAW_ACTIVE_FRAME 134 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
#define  CG_EVENT_HANDLING 133 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
#define  CG_INIT 132 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
#define  CG_KEY_EVENT 131 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
#define  CG_LAST_ATTACKER 130 
 int FUNC7 () ; 
#define  CG_MOUSE_EVENT 129 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
#define  CG_SHUTDOWN 128 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_2__ cgDC ; 
 TYPE_1__ cgs ; 

int FUNC10( int command, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9, int arg10, int arg11  ) {

	switch ( command ) {
	case CG_INIT:
		FUNC5( arg0, arg1, arg2 );
		return 0;
	case CG_SHUTDOWN:
		FUNC9();
		return 0;
	case CG_CONSOLE_COMMAND:
		return FUNC0();
	case CG_DRAW_ACTIVE_FRAME:
		FUNC2( arg0, arg1, arg2 );
		return 0;
	case CG_CROSSHAIR_PLAYER:
		return FUNC1();
	case CG_LAST_ATTACKER:
		return FUNC7();
	case CG_KEY_EVENT:
		FUNC6(arg0, arg1);
		return 0;
	case CG_MOUSE_EVENT:
#ifdef MISSIONPACK
		cgDC.cursorx = cgs.cursorX;
		cgDC.cursory = cgs.cursorY;
#endif
		FUNC8(arg0, arg1);
		return 0;
	case CG_EVENT_HANDLING:
		FUNC4(arg0);
		return 0;
	default:
		FUNC3( "vmMain: unknown command %i", command );
		break;
	}
	return -1;
}