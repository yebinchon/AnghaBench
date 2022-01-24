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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  i2c_test_task ; 
 int /*<<< orphan*/  print_mux ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,void*,int,int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
    print_mux = FUNC3();
    FUNC0(FUNC2());
    FUNC0(FUNC1());
    FUNC4(i2c_test_task, "i2c_test_task_0", 1024 * 2, (void *)0, 10, NULL);
    FUNC4(i2c_test_task, "i2c_test_task_1", 1024 * 2, (void *)1, 10, NULL);
}