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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xstate_t ;
typedef  TYPE_1__* thread_t ;
struct TYPE_6__ {scalar_t__ xstate; } ;
struct TYPE_5__ {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 scalar_t__ UNDEFINED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static xstate_t
FUNC2(thread_t thread)
{
	xstate_t xs = FUNC0(thread)->xstate;
	if (xs == UNDEFINED)
		return FUNC1(thread->task);
	else
		return xs;
}