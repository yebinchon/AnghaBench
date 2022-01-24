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
typedef  int /*<<< orphan*/  vmInterpret_t ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  uiStarted; } ;

/* Variables and functions */
 scalar_t__ CA_ACTIVE ; 
 scalar_t__ CA_AUTHORIZING ; 
 int /*<<< orphan*/  CL_UISystemCalls ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int UI_API_VERSION ; 
 int /*<<< orphan*/  UI_GETAPIVERSION ; 
 int /*<<< orphan*/  UI_INIT ; 
 int UI_OLD_API_VERSION ; 
 int /*<<< orphan*/  VMI_COMPILED ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ cl_connectedToPureServer ; 
 TYPE_1__ cls ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  uivm ; 

void FUNC4( void ) {
	int		v;
	vmInterpret_t		interpret;

	// load the dll or bytecode
	if ( cl_connectedToPureServer != 0 ) {
		// if sv_pure is set we only allow qvms to be loaded
		interpret = VMI_COMPILED;
	}
	else {
		interpret = FUNC1( "vm_ui" );
	}
	uivm = FUNC3( "ui", CL_UISystemCalls, interpret );
	if ( !uivm ) {
		FUNC0( ERR_FATAL, "VM_Create on UI failed" );
	}

	// sanity check
	v = FUNC2( uivm, UI_GETAPIVERSION );
	if (v == UI_OLD_API_VERSION) {
//		Com_Printf(S_COLOR_YELLOW "WARNING: loading old Quake III Arena User Interface version %d\n", v );
		// init for this gamestate
		FUNC2( uivm, UI_INIT, (cls.state >= CA_AUTHORIZING && cls.state < CA_ACTIVE));
	}
	else if (v != UI_API_VERSION) {
		FUNC0( ERR_DROP, "User Interface is version %d, expected %d", v, UI_API_VERSION );
		cls.uiStarted = qfalse;
	}
	else {
		// init for this gamestate
		FUNC2( uivm, UI_INIT, (cls.state >= CA_AUTHORIZING && cls.state < CA_ACTIVE) );
	}
}