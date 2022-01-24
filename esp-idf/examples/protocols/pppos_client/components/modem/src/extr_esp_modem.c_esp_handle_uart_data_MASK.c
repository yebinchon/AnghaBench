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
struct TYPE_3__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/  ppp; int /*<<< orphan*/  uart_port; } ;
typedef  TYPE_1__ esp_modem_dte_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_MODEM_LINE_BUFFER_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(esp_modem_dte_t *esp_dte)
{
    size_t length = 0;
    FUNC2(esp_dte->uart_port, &length);
    length = FUNC0(ESP_MODEM_LINE_BUFFER_SIZE, length);
    length = FUNC3(esp_dte->uart_port, esp_dte->buffer, length, portMAX_DELAY);
    /* pass input data to the lwIP core thread */
    if (length) {
        FUNC1(esp_dte->ppp, esp_dte->buffer, length);
    }
}