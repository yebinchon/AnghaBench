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
struct TYPE_2__ {scalar_t__ running; int /*<<< orphan*/ * func; int /*<<< orphan*/ * thd; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* thread_handle ; 

void FUNC3(unsigned int id) {
    /* Make sure the thread is running. */
    if(!thread_handle[id].running)
        return; 

    /* Join the thread to wait for it to finish. */
    FUNC1(thread_handle[id].thd, NULL);

    /* Cleanup... */
    FUNC0(&thread_handle[id].cond);
    FUNC2(&thread_handle[id].mutex);
    thread_handle[id].thd = NULL;
    thread_handle[id].func = NULL;

    thread_handle[id].running = 0;
}