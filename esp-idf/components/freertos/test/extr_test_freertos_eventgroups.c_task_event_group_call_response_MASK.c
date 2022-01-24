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

/* Variables and functions */
 int /*<<< orphan*/  BIT_CALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  done_sem ; 
 int /*<<< orphan*/  eg ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *param)
{
    int task_num = (int)param;

    FUNC2("Started %d\n", task_num);

    for (int i = 0; i < COUNT; i++) {
        /* Wait until the common "call" bit is set, starts off all tasks
           (clear on return) */
        FUNC1( FUNC5(eg, BIT_CALL, true, false, portMAX_DELAY) );

        /* Set our individual "response" bit */
        FUNC4(eg, FUNC0(task_num));
    }

    FUNC2("Task %d done\n", task_num);
    FUNC6(done_sem);
    FUNC3(NULL);
}