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
typedef  int /*<<< orphan*/  xSemaphoreHandle ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  DPORT_DATE_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int apb_test_result ; 
 int dport_test_result ; 
 int exit_flag ; 
 scalar_t__ stall_other_cpu_counter ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    uint32_t dport_date = FUNC0(DPORT_DATE_REG);
    uint32_t dport_date_cur;
    dport_test_result = true;
    stall_other_cpu_counter = 0;
    // although exit flag is set in another task, checking (exit_flag == false) is safe
    while (exit_flag == false) {
        ++stall_other_cpu_counter;
        FUNC2();
        dport_date_cur = FUNC3(DPORT_DATE_REG);
        FUNC1();
        if (dport_date != dport_date_cur) {
            apb_test_result = false;
            break;
        }
    }

    FUNC5(*sema);
    FUNC4(NULL);
}