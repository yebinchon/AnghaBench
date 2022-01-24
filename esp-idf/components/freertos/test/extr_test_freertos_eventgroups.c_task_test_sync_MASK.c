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
 int /*<<< orphan*/  ALL_RESPONSE_BITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int COUNT ; 
 int /*<<< orphan*/  done_sem ; 
 int /*<<< orphan*/  eg ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void *param)
{
    int task_num = (int)param;

    FUNC2("Started %d\n", task_num);

    for (int i = 0; i < COUNT; i++) {
        /* set our bit, and wait on all tasks to set their bits */
        FUNC6(eg, FUNC1(task_num), ALL_RESPONSE_BITS, portMAX_DELAY);
        /* clear our bit */
        FUNC4(eg, FUNC1(task_num));
    }
    int after_done = FUNC5(eg, FUNC0(task_num));

    FUNC2("Done %d = 0x%08x\n", task_num, after_done);

    FUNC7(done_sem);
    FUNC3(NULL);
}