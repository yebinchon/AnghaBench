#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  voidfunc_f ;
struct TYPE_2__ {int id; } ;
typedef  TYPE_1__ menucommon_s ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_APPEND ; 
#define  ID_ADDBOTS 137 
#define  ID_LEAVEARENA 136 
#define  ID_QUIT 135 
#define  ID_REMOVEBOTS 134 
#define  ID_RESTART 133 
#define  ID_RESUME 132 
#define  ID_SERVERINFO 131 
#define  ID_SETUP 130 
#define  ID_TEAM 129 
#define  ID_TEAMORDERS 128 
 int /*<<< orphan*/  InGame_QuitAction ; 
 int /*<<< orphan*/  InGame_RestartAction ; 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

void FUNC9( void *ptr, int notification ) {
	if( notification != QM_ACTIVATED ) {
		return;
	}

	switch( ((menucommon_s*)ptr)->id ) {
	case ID_TEAM:
		FUNC6();
		break;

	case ID_SETUP:
		FUNC5();
		break;

	case ID_LEAVEARENA:
		FUNC8( EXEC_APPEND, "disconnect\n" );
		break;

	case ID_RESTART:
		FUNC1( "RESTART ARENA?", (voidfunc_f)NULL, InGame_RestartAction );
		break;

	case ID_QUIT:
		FUNC1( "EXIT GAME?",  (voidfunc_f)NULL, InGame_QuitAction );
		break;

	case ID_SERVERINFO:
		FUNC4();
		break;

	case ID_ADDBOTS:
		FUNC0();
		break;

	case ID_REMOVEBOTS:
		FUNC3();
		break;

	case ID_TEAMORDERS:
		FUNC7();
		break;

	case ID_RESUME:
		FUNC2();
		break;
	}
}