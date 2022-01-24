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
typedef  scalar_t__ thread_t ;
struct arm_saved_state {int dummy; } ;
struct TYPE_2__ {struct arm_saved_state* cpu_int_state; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 

struct arm_saved_state *
FUNC2(
	       thread_t thread)
{
	/*
         * This works only for an interrupted kernel thread
         */
	if (thread != FUNC0() || FUNC1()->cpu_int_state == NULL)
		return ((struct arm_saved_state *) NULL);
	else
		return (FUNC1()->cpu_int_state);

}