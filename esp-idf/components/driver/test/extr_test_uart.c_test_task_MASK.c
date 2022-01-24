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

/* Variables and functions */
 int /*<<< orphan*/  UART_NUM1 ; 
 int exit_flag ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    char* data = (char *) FUNC1(256);

    while (exit_flag == false) {
        FUNC2(UART_NUM1, data, 256);
        // The uart_wait_tx_done() function does not block anything if ticks_to_wait = 0.
        FUNC3(UART_NUM1, 0);
    }

    FUNC0(data);
    FUNC5(*sema);
    FUNC4(NULL);
}