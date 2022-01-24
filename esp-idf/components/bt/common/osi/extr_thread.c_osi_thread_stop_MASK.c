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
struct TYPE_4__ {int stop; scalar_t__ thread_handle; int /*<<< orphan*/  work_sem; } ;
typedef  TYPE_1__ osi_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(osi_thread_t *thread)
{
    int ret;

    FUNC0(thread != NULL);

    //stop the thread
    thread->stop = true;
    FUNC1(&thread->work_sem);

    //join
    ret = FUNC2(thread, 1000); //wait 1000ms
   
    //if join failed, delete the task here
    if (ret != 0 && thread->thread_handle) {
        FUNC3(thread->thread_handle);
    }
}