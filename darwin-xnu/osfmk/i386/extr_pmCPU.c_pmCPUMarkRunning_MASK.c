#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  state; } ;
struct TYPE_6__ {TYPE_2__ lcpu; } ;
typedef  TYPE_1__ cpu_data_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* markCPURunning ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LCPU_RUN ; 
 TYPE_1__* FUNC0 () ; 
 TYPE_3__* pmDispatch ; 
 scalar_t__ pmInitDone ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void
FUNC2(cpu_data_t *cpu)
{
    cpu_data_t	*cpup	= FUNC0();

    if (pmInitDone
	&& pmDispatch != NULL
	&& pmDispatch->markCPURunning != NULL)
	(*pmDispatch->markCPURunning)(&cpu->lcpu);
    else
	cpup->lcpu.state = LCPU_RUN;
}