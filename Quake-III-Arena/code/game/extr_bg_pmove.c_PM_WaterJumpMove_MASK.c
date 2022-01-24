#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* ps; } ;
struct TYPE_5__ {int frametime; } ;
struct TYPE_4__ {scalar_t__* velocity; int gravity; scalar_t__ pm_time; int /*<<< orphan*/  pm_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMF_ALL_TIMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* pm ; 
 TYPE_2__ pml ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static void FUNC1( void ) {
	// waterjump has no control, but falls

	FUNC0( qtrue );

	pm->ps->velocity[2] -= pm->ps->gravity * pml.frametime;
	if (pm->ps->velocity[2] < 0) {
		// cancel as soon as we are falling down again
		pm->ps->pm_flags &= ~PMF_ALL_TIMES;
		pm->ps->pm_time = 0;
	}
}