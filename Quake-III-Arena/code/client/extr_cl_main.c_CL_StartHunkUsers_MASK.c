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
struct TYPE_4__ {void* uiStarted; void* soundRegistered; void* soundStarted; void* rendererStarted; } ;
struct TYPE_3__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__ cls ; 
 TYPE_1__* com_cl_running ; 
 void* qtrue ; 

void FUNC4( void ) {
	if (!com_cl_running) {
		return;
	}

	if ( !com_cl_running->integer ) {
		return;
	}

	if ( !cls.rendererStarted ) {
		cls.rendererStarted = qtrue;
		FUNC0();
	}

	if ( !cls.soundStarted ) {
		cls.soundStarted = qtrue;
		FUNC3();
	}

	if ( !cls.soundRegistered ) {
		cls.soundRegistered = qtrue;
		FUNC2();
	}

	if ( !cls.uiStarted ) {
		cls.uiStarted = qtrue;
		FUNC1();
	}
}