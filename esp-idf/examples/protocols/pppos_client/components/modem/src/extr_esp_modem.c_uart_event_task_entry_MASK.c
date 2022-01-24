#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int type; } ;
typedef  TYPE_1__ uart_event_t ;
struct TYPE_7__ {int /*<<< orphan*/  event_loop_hdl; int /*<<< orphan*/  event_queue; int /*<<< orphan*/  uart_port; } ;
typedef  TYPE_2__ esp_modem_dte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  MODEM_TAG ; 
#define  UART_BREAK 134 
#define  UART_BUFFER_FULL 133 
#define  UART_DATA 132 
#define  UART_FIFO_OVF 131 
#define  UART_FRAME_ERR 130 
#define  UART_PARITY_ERR 129 
#define  UART_PATTERN_DET 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void *param)
{
    esp_modem_dte_t *esp_dte = (esp_modem_dte_t *)param;
    uart_event_t event;
    while (1) {
        if (FUNC8(esp_dte->event_queue, &event, FUNC5(100))) {
            switch (event.type) {
            case UART_DATA:
                FUNC3(esp_dte);
                break;
            case UART_FIFO_OVF:
                FUNC1(MODEM_TAG, "HW FIFO Overflow");
                FUNC6(esp_dte->uart_port);
                FUNC9(esp_dte->event_queue);
                break;
            case UART_BUFFER_FULL:
                FUNC1(MODEM_TAG, "Ring Buffer Full");
                FUNC6(esp_dte->uart_port);
                FUNC9(esp_dte->event_queue);
                break;
            case UART_BREAK:
                FUNC1(MODEM_TAG, "Rx Break");
                break;
            case UART_PARITY_ERR:
                FUNC0(MODEM_TAG, "Parity Error");
                break;
            case UART_FRAME_ERR:
                FUNC0(MODEM_TAG, "Frame Error");
                break;
            case UART_PATTERN_DET:
                FUNC4(esp_dte);
                break;
            default:
                FUNC1(MODEM_TAG, "unknown uart event type: %d", event.type);
                break;
            }
        }
        /* Drive the event loop */
        FUNC2(esp_dte->event_loop_hdl, FUNC5(50));
    }
    FUNC7(NULL);
}