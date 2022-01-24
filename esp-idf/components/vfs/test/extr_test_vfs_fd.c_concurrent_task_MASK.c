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
struct TYPE_2__ {int /*<<< orphan*/  done; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ concurrent_test_task_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,int) ; 
 int const FUNC1 (int const) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *param)
{
    concurrent_test_task_param_t *task_param = (concurrent_test_task_param_t *) param;

    FUNC3(10);
    for (int i = 0; i < 10; ++i) {
        const int global_fd = FUNC2(task_param->path, 0, 0);
        FUNC0(global_fd, -1);
        FUNC3(10);
        FUNC0(FUNC1(global_fd), -1);
        FUNC3(10);
    }
    FUNC5(task_param->done);
    FUNC4(NULL);
}