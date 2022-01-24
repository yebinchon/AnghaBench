#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int boolean_t ;
struct TYPE_6__ {TYPE_1__* package; } ;
struct TYPE_8__ {TYPE_2__ lcpu; } ;
struct TYPE_7__ {scalar_t__ nLThreadsPerPackage; } ;
struct TYPE_5__ {scalar_t__ num_idle; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 TYPE_3__ topoParms ; 

void FUNC2(boolean_t *icp, boolean_t *pidlep) {
	*icp = (FUNC1() != 0);
	/* These will be technically inaccurate for interrupts that occur
	 * successively within a single "idle exit" event, but shouldn't
	 * matter statistically.
	 */
	*pidlep = (FUNC0()->lcpu.package->num_idle == topoParms.nLThreadsPerPackage);
}