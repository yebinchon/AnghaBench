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
struct TYPE_3__ {int baud_rate; int /*<<< orphan*/  flow_ctrl; int /*<<< orphan*/  stop_bits; int /*<<< orphan*/  parity; int /*<<< orphan*/  data_bits; } ;
typedef  TYPE_1__ uart_config_t ;

/* Variables and functions */
 int BUF_SIZE ; 
 int /*<<< orphan*/  ESP_LOG_INFO ; 
 int /*<<< orphan*/  EX_UART_NUM ; 
 int /*<<< orphan*/  PATTERN_CHR_NUM ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  UART_DATA_8_BITS ; 
 int /*<<< orphan*/  UART_HW_FLOWCTRL_DISABLE ; 
 int /*<<< orphan*/  UART_PARITY_DISABLE ; 
 int /*<<< orphan*/  UART_PIN_NO_CHANGE ; 
 int /*<<< orphan*/  UART_STOP_BITS_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uart0_queue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uart_event_task ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
    FUNC0(TAG, ESP_LOG_INFO);

    /* Configure parameters of an UART driver,
     * communication pins and install the driver */
    uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    FUNC3(EX_UART_NUM, &uart_config);

    //Set UART log level
    FUNC0(TAG, ESP_LOG_INFO);
    //Set UART pins (using UART0 default pins ie no changes.)
    FUNC5(EX_UART_NUM, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
    //Install UART driver, and get the queue.
    FUNC1(EX_UART_NUM, BUF_SIZE * 2, BUF_SIZE * 2, 20, &uart0_queue, 0);

    //Set uart pattern detect function.
    FUNC2(EX_UART_NUM, '+', PATTERN_CHR_NUM, 9, 0, 0);
    //Reset the pattern queue length to record at most 20 pattern positions.
    FUNC4(EX_UART_NUM, 20);

    //Create a task to handler UART event from ISR
    FUNC6(uart_event_task, "uart_event_task", 2048, NULL, 12, NULL);
}