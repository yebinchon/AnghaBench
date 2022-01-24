#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* buffer; int /*<<< orphan*/  uart_port; } ;
typedef  TYPE_1__ esp_modem_dte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int ESP_MODEM_LINE_BUFFER_SIZE ; 
 int /*<<< orphan*/  MODEM_TAG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(esp_modem_dte_t *esp_dte)
{
    int pos = FUNC5(esp_dte->uart_port);
    int read_len = 0;
    if (pos != -1) {
        if (pos < ESP_MODEM_LINE_BUFFER_SIZE - 1) {
            /* read one line(include '\n') */
            read_len = pos + 1;
        } else {
            FUNC1(MODEM_TAG, "ESP Modem Line buffer too small");
            read_len = ESP_MODEM_LINE_BUFFER_SIZE - 1;
        }
        read_len = FUNC6(esp_dte->uart_port, esp_dte->buffer, read_len, FUNC3(100));
        if (read_len) {
            /* make sure the line is a standard string */
            esp_dte->buffer[read_len] = '\0';
            /* Send new line to handle */
            FUNC2(esp_dte);
        } else {
            FUNC0(MODEM_TAG, "uart read bytes failed");
        }
    } else {
        FUNC1(MODEM_TAG, "Pattern Queue Size too small");
        FUNC4(esp_dte->uart_port);
    }
}