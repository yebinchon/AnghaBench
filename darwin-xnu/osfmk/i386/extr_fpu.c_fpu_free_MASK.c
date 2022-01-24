#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
typedef  TYPE_1__* pcb_t ;
struct TYPE_3__ {int /*<<< orphan*/  xstate; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNDEFINED ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 

void
FUNC2(thread_t thread, void *fps)
{
	pcb_t	pcb = FUNC0(thread);
	
	FUNC1(fps, pcb->xstate);
	pcb->xstate = UNDEFINED;
}