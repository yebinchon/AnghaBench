#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int NO_OF_TLSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int TLSP_SET_BASE ; 
 int /*<<< orphan*/  del_cb ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int** task_storage ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *arg)
{
    int core = FUNC4();
    for(int i = 0; i < NO_OF_TLSP; i++){
        task_storage[core][i] = (TLSP_SET_BASE << i);   //Give each element of task_storage a unique number
        FUNC3(NULL, i, (void *)&task_storage[core][i], del_cb);   //Set each TLSP to point to a task storage element
    }

    for(int i = 0; i < NO_OF_TLSP; i++){
        uint32_t * tlsp = (uint32_t *)FUNC1(NULL, i);
        FUNC0(*tlsp, (TLSP_SET_BASE << i)); //Check if TLSP points to the correct task storage element by checking unique value
    }

    FUNC2(NULL);      //Delete Task to Trigger TSLP deletion callback
}