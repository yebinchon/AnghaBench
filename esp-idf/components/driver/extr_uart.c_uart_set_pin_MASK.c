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
typedef  int uart_port_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  GPIO_MODE_INPUT ; 
 int /*<<< orphan*/  GPIO_MODE_OUTPUT ; 
 int /*<<< orphan*/ * GPIO_PIN_MUX_REG ; 
 int /*<<< orphan*/  GPIO_PULLUP_ONLY ; 
 int /*<<< orphan*/  PIN_FUNC_GPIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int U0CTS_IN_IDX ; 
 int U0RTS_OUT_IDX ; 
 int U0RXD_IN_IDX ; 
 int U0TXD_OUT_IDX ; 
 int U1CTS_IN_IDX ; 
 int U1RTS_OUT_IDX ; 
 int U1RXD_IN_IDX ; 
 int U1TXD_OUT_IDX ; 
 int U2CTS_IN_IDX ; 
 int U2RTS_OUT_IDX ; 
 int U2RXD_IN_IDX ; 
 int U2TXD_OUT_IDX ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
#define  UART_NUM_0 131 
#define  UART_NUM_1 130 
#define  UART_NUM_2 129 
#define  UART_NUM_MAX 128 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

esp_err_t FUNC9(uart_port_t uart_num, int tx_io_num, int rx_io_num, int rts_io_num, int cts_io_num)
{
    FUNC3((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    FUNC3((tx_io_num < 0 || (FUNC1(tx_io_num))), "tx_io_num error", ESP_FAIL);
    FUNC3((rx_io_num < 0 || (FUNC0(rx_io_num))), "rx_io_num error", ESP_FAIL);
    FUNC3((rts_io_num < 0 || (FUNC1(rts_io_num))), "rts_io_num error", ESP_FAIL);
    FUNC3((cts_io_num < 0 || (FUNC0(cts_io_num))), "cts_io_num error", ESP_FAIL);

    int tx_sig, rx_sig, rts_sig, cts_sig;
    switch(uart_num) {
        case UART_NUM_0:
            tx_sig = U0TXD_OUT_IDX;
            rx_sig = U0RXD_IN_IDX;
            rts_sig = U0RTS_OUT_IDX;
            cts_sig = U0CTS_IN_IDX;
            break;
        case UART_NUM_1:
            tx_sig = U1TXD_OUT_IDX;
            rx_sig = U1RXD_IN_IDX;
            rts_sig = U1RTS_OUT_IDX;
            cts_sig = U1CTS_IN_IDX;
            break;
#if UART_NUM > 2
        case UART_NUM_2:
            tx_sig = U2TXD_OUT_IDX;
            rx_sig = U2RXD_IN_IDX;
            rts_sig = U2RTS_OUT_IDX;
            cts_sig = U2CTS_IN_IDX;
            break;
#endif
        case UART_NUM_MAX:
            default:
            tx_sig = U0TXD_OUT_IDX;
            rx_sig = U0RXD_IN_IDX;
            rts_sig = U0RTS_OUT_IDX;
            cts_sig = U0CTS_IN_IDX;
            break;
    }
    if (tx_io_num >= 0) {
        FUNC2(GPIO_PIN_MUX_REG[tx_io_num], PIN_FUNC_GPIO);
        FUNC7(tx_io_num, 1);
        FUNC5(tx_io_num, tx_sig, 0, 0);
    }

    if (rx_io_num >= 0) {
        FUNC2(GPIO_PIN_MUX_REG[rx_io_num], PIN_FUNC_GPIO);
        FUNC8(rx_io_num, GPIO_PULLUP_ONLY);
        FUNC6(rx_io_num, GPIO_MODE_INPUT);
        FUNC4(rx_io_num, rx_sig, 0);
    }
    if (rts_io_num >= 0) {
        FUNC2(GPIO_PIN_MUX_REG[rts_io_num], PIN_FUNC_GPIO);
        FUNC6(rts_io_num, GPIO_MODE_OUTPUT);
        FUNC5(rts_io_num, rts_sig, 0, 0);
    }
    if (cts_io_num >= 0) {
        FUNC2(GPIO_PIN_MUX_REG[cts_io_num], PIN_FUNC_GPIO);
        FUNC8(cts_io_num, GPIO_PULLUP_ONLY);
        FUNC6(cts_io_num, GPIO_MODE_INPUT);
        FUNC4(cts_io_num, cts_sig, 0);
    }
    return ESP_OK;
}