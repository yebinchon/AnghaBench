#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int baud_rate; int /*<<< orphan*/  flow_ctrl; int /*<<< orphan*/  stop_bits; int /*<<< orphan*/  parity; int /*<<< orphan*/  data_bits; } ;
typedef  TYPE_2__ uart_config_t ;
struct TYPE_5__ {int loopback; } ;
struct TYPE_7__ {TYPE_1__ conf0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_4__ UART1 ; 
 int /*<<< orphan*/  UART_DATA_8_BITS ; 
 int /*<<< orphan*/  UART_HW_FLOWCTRL_DISABLE ; 
 int /*<<< orphan*/  UART_NUM_1 ; 
 int /*<<< orphan*/  UART_PARITY_DISABLE ; 
 int /*<<< orphan*/  UART_STOP_BITS_1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int uart_fd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(void)
{
    uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity    = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    FUNC5(UART_NUM_1, &uart_config);
    FUNC4(UART_NUM_1, 256, 0, 0, NULL, 0);
    UART1.conf0.loopback = 1;

    if ((uart_fd = FUNC2("/dev/uart/1", O_RDWR | O_NONBLOCK)) == -1) {
        FUNC0(TAG, "Cannot open UART1");
        FUNC3();
    }

    FUNC1(1);
}