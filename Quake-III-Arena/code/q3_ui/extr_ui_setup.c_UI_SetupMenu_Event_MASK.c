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
struct TYPE_2__ {int id; } ;
typedef  TYPE_1__ menucommon_s ;

/* Variables and functions */
#define  ID_BACK 134 
#define  ID_CDKEY 133 
#define  ID_CUSTOMIZECONTROLS 132 
#define  ID_CUSTOMIZEPLAYER 131 
#define  ID_DEFAULTS 130 
#define  ID_GAME 129 
#define  ID_SYSTEMCONFIG 128 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  Setup_ResetDefaults_Action ; 
 int /*<<< orphan*/  Setup_ResetDefaults_Draw ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7( void *ptr, int event ) {
	if( event != QM_ACTIVATED ) {
		return;
	}

	switch( ((menucommon_s*)ptr)->id ) {
	case ID_CUSTOMIZEPLAYER:
		FUNC4();
		break;

	case ID_CUSTOMIZECONTROLS:
		FUNC2();
		break;

	case ID_SYSTEMCONFIG:
		FUNC3();
		break;

	case ID_GAME:
		FUNC6();
		break;

	case ID_CDKEY:
		FUNC0();
		break;

//	case ID_LOAD:
//		UI_LoadConfigMenu();
//		break;

//	case ID_SAVE:
//		UI_SaveConfigMenu();
//		break;

	case ID_DEFAULTS:
		FUNC1( "SET TO DEFAULTS?", Setup_ResetDefaults_Draw, Setup_ResetDefaults_Action );
		break;

	case ID_BACK:
		FUNC5();
		break;
	}
}