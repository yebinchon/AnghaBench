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
 int dport_test_result ; 
 int exit_flag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    uint32_t dport_date = FUNC0(DPORT_DATE_REG);

    dport_test_result = true;

    // although exit flag is set in another task, checking (exit_flag == false) is safe
    while (exit_flag == false) {
        if (dport_date != FUNC0(DPORT_DATE_REG)) {
            dport_test_result = false;
            break;
        }
    }

    FUNC2(*sema);
    FUNC1(NULL);
}