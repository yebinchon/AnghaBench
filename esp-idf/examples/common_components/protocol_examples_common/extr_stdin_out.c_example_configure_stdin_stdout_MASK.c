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
typedef  int /*<<< orphan*/  uart_port_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 scalar_t__ CONFIG_ESP_CONSOLE_UART_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_LINE_ENDINGS_CR ; 
 int /*<<< orphan*/  ESP_LINE_ENDINGS_CRLF ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

esp_err_t FUNC6(void)
{
    // Initialize VFS & UART so we can use std::cout/cin
    FUNC4(stdin, NULL, _IONBF, 0);
    FUNC4(stdout, NULL, _IONBF, 0);
    /* Install UART driver for interrupt-driven reads and writes */
    FUNC0( FUNC5( (uart_port_t)CONFIG_ESP_CONSOLE_UART_NUM,
            256, 0, 0, NULL, 0) );
    /* Tell VFS to use UART driver */
    FUNC3(CONFIG_ESP_CONSOLE_UART_NUM);
    FUNC1(ESP_LINE_ENDINGS_CR);
    /* Move the caret to the beginning of the next line on '\n' */
    FUNC2(ESP_LINE_ENDINGS_CRLF);
    return ESP_OK;
}