#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  parity; int /*<<< orphan*/  baudrate; int /*<<< orphan*/  mode; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ mb_communication_info_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MB_UART_RTS ; 
 int /*<<< orphan*/  CONFIG_MB_UART_RXD ; 
 int /*<<< orphan*/  CONFIG_MB_UART_TXD ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  MB_BAUDRATE ; 
 int /*<<< orphan*/  MB_MODE_RTU ; 
 int /*<<< orphan*/  MB_PARITY ; 
 int /*<<< orphan*/  MB_PORTNUM ; 
 int /*<<< orphan*/  MB_PORT_SERIAL_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  UART_MODE_RS485_HALF_DUPLEX ; 
 int /*<<< orphan*/  UART_PIN_NO_CHANGE ; 
 int /*<<< orphan*/ * device_parameters ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  num_device_parameters ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

esp_err_t FUNC8(void)
{
    mb_communication_info_t comm = {
            .port = MB_PORTNUM,
            .mode = MB_MODE_RTU,
            .baudrate = MB_BAUDRATE,
            .parity = MB_PARITY
    };
    void* master_handler = NULL;

    esp_err_t err = FUNC1(MB_PORT_SERIAL_MASTER, &master_handler);
    FUNC0((master_handler != NULL), ESP_ERR_INVALID_STATE,
                                "mb controller initialization fail.");
    FUNC0((err == ESP_OK), ESP_ERR_INVALID_STATE,
                            "mb controller initialization fail, returns(0x%x).",
                            (uint32_t)err);
    err = FUNC3((void*)&comm);
    FUNC0((err == ESP_OK), ESP_ERR_INVALID_STATE,
                            "mb controller setup fail, returns(0x%x).",
                            (uint32_t)err);
    err = FUNC4();
    FUNC0((err == ESP_OK), ESP_ERR_INVALID_STATE,
                            "mb controller start fail, returns(0x%x).",
                            (uint32_t)err);
    // Set UART pin numbers
    err = FUNC6(MB_PORTNUM, CONFIG_MB_UART_TXD, CONFIG_MB_UART_RXD,
                                    CONFIG_MB_UART_RTS, UART_PIN_NO_CHANGE);
    FUNC0((err == ESP_OK), ESP_ERR_INVALID_STATE,
            "mb serial set pin failure, uart_set_pin() returned (0x%x).", (uint32_t)err); 
    // Set driver mode to Half Duplex
    err = FUNC5(MB_PORTNUM, UART_MODE_RS485_HALF_DUPLEX);
    FUNC0((err == ESP_OK), ESP_ERR_INVALID_STATE,
            "mb serial set mode failure, uart_set_mode() returned (0x%x).", (uint32_t)err);
    FUNC7(5);
    err = FUNC2(&device_parameters[0], num_device_parameters);
    FUNC0((err == ESP_OK), ESP_ERR_INVALID_STATE,
                                "mb controller set descriptor fail, returns(0x%x).",
                                (uint32_t)err);
    return err;
}