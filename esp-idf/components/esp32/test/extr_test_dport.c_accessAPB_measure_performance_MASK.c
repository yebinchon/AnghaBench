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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ apb_counter ; 
 int apb_test_result ; 
 int exit_flag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    uint32_t uart_date = FUNC0(FUNC1(0));

    apb_test_result = true;
    apb_counter = 0;
    // although exit flag is set in another task, checking (exit_flag == false) is safe
    while (exit_flag == false) {
        ++apb_counter;
        if (uart_date != FUNC0(FUNC1(0))) {
            apb_test_result = false;
            break;
        }
    }

    FUNC3(*sema);
    FUNC2(NULL);
}