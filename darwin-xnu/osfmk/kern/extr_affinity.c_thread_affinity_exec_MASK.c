#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct TYPE_4__ {scalar_t__ affinity_set; } ;

/* Variables and functions */
 scalar_t__ AFFINITY_SET_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void
FUNC1(thread_t thread)
{
	if (thread->affinity_set != AFFINITY_SET_NULL)
		FUNC0(thread);
}