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
struct TYPE_2__ {int /*<<< orphan*/  demoversion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ FUNC3 (char*) ; 
 int ui_numSinglePlayerArenas ; 
 scalar_t__ ui_numSpecialSinglePlayerArenas ; 
 TYPE_1__ uis ; 

void FUNC4( void ) {

	FUNC0();
	FUNC1();
	FUNC2();

	if( (FUNC3( "fs_restrict" )) || (ui_numSpecialSinglePlayerArenas == 0 && ui_numSinglePlayerArenas == 4) ) {
		uis.demoversion = qtrue;
	}
	else {
		uis.demoversion = qfalse;
	}
}