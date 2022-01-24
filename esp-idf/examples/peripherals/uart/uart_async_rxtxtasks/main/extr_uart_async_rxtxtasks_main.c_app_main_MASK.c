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
 scalar_t__ configMAX_PRIORITIES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  rx_task ; 
 int /*<<< orphan*/  tx_task ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
    FUNC0();
    FUNC1(rx_task, "uart_rx_task", 1024*2, NULL, configMAX_PRIORITIES, NULL);
    FUNC1(tx_task, "uart_tx_task", 1024*2, NULL, configMAX_PRIORITIES-1, NULL);
}