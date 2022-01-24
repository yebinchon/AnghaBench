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
typedef  int /*<<< orphan*/  shader2 ;
typedef  int /*<<< orphan*/  shader1 ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_3__ {int frameTime; int realTime; } ;
struct TYPE_4__ {TYPE_1__ uiDC; } ;

/* Variables and functions */
 int MAX_QPATH ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 
 TYPE_2__ uiInfo ; 

qboolean FUNC10( int realTime ) {
	char	*cmd;

	uiInfo.uiDC.frameTime = realTime - uiInfo.uiDC.realTime;
	uiInfo.uiDC.realTime = realTime;

	cmd = FUNC2( 0 );

	// ensure minimum menu data is available
	//Menu_Cache();

	if ( FUNC0 (cmd, "ui_test") == 0 ) {
		FUNC7(qtrue);
	}

	if ( FUNC0 (cmd, "ui_report") == 0 ) {
		FUNC6();
		return qtrue;
	}
	
	if ( FUNC0 (cmd, "ui_load") == 0 ) {
		FUNC5();
		return qtrue;
	}

	if ( FUNC0 (cmd, "remapShader") == 0 ) {
		if (FUNC8() == 4) {
			char shader1[MAX_QPATH];
			char shader2[MAX_QPATH];
			FUNC1(shader1, FUNC2(1), sizeof(shader1));
			FUNC1(shader2, FUNC2(2), sizeof(shader2));
			FUNC9(shader1, shader2, FUNC2(3));
			return qtrue;
		}
	}

	if ( FUNC0 (cmd, "postgame") == 0 ) {
		FUNC4();
		return qtrue;
	}

	if ( FUNC0 (cmd, "ui_cache") == 0 ) {
		FUNC3();
		return qtrue;
	}

	if ( FUNC0 (cmd, "ui_teamOrders") == 0 ) {
		//UI_TeamOrdersMenu_f();
		return qtrue;
	}


	if ( FUNC0 (cmd, "ui_cdkey") == 0 ) {
		//UI_CDKeyMenu_f();
		return qtrue;
	}

	return qfalse;
}