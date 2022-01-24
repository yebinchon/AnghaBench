#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int baud_rate; int rx_flow_ctrl_thresh; int /*<<< orphan*/  flow_ctrl; int /*<<< orphan*/  stop_bits; int /*<<< orphan*/  parity; int /*<<< orphan*/  data_bits; } ;
typedef  TYPE_1__ uart_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  UART_DATA_8_BITS ; 
 int /*<<< orphan*/  UART_HW_FLOWCTRL_RTS ; 
 scalar_t__ UART_NUM_0 ; 
 int /*<<< orphan*/  UART_PARITY_DISABLE ; 
 int /*<<< orphan*/  UART_PIN_NO_CHANGE ; 
 int /*<<< orphan*/  UART_STOP_BITS_1 ; 
 int /*<<< orphan*/  spp_uart_queue ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uart_task ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,void*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
    uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_RTS,
        .rx_flow_ctrl_thresh = 122,
    };

    //Set UART parameters
    FUNC1(UART_NUM_0, &uart_config);
    //Set UART pins
    FUNC2(UART_NUM_0, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
    //Install UART driver, and get the queue.
    FUNC0(UART_NUM_0, 4096, 8192, 10, &spp_uart_queue, 0);
    FUNC3(uart_task, "uTask", 2048, (void*)UART_NUM_0, 8, NULL);
}