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
typedef  int /*<<< orphan*/  thread_t ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_active_thread; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 

void
FUNC1(thread_t thread)
{
	FUNC0()->cpu_active_thread = thread;
}