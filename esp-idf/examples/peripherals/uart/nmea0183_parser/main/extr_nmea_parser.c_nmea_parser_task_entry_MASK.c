#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int type; } ;
typedef  TYPE_1__ uart_event_t ;
struct TYPE_6__ {int /*<<< orphan*/  event_loop_hdl; int /*<<< orphan*/  event_queue; int /*<<< orphan*/  uart_port; } ;
typedef  TYPE_2__ esp_gps_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  GPS_TAG ; 
#define  UART_BREAK 134 
#define  UART_BUFFER_FULL 133 
#define  UART_DATA 132 
#define  UART_FIFO_OVF 131 
#define  UART_FRAME_ERR 130 
#define  UART_PARITY_ERR 129 
#define  UART_PATTERN_DET 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void *arg)
{
    esp_gps_t *esp_gps = (esp_gps_t *)arg;
    uart_event_t event;
    while (1) {
        if (FUNC7(esp_gps->event_queue, &event, FUNC4(200))) {
            switch (event.type) {
            case UART_DATA:
                break;
            case UART_FIFO_OVF:
                FUNC1(GPS_TAG, "HW FIFO Overflow");
                FUNC5(esp_gps->uart_port);
                FUNC8(esp_gps->event_queue);
                break;
            case UART_BUFFER_FULL:
                FUNC1(GPS_TAG, "Ring Buffer Full");
                FUNC5(esp_gps->uart_port);
                FUNC8(esp_gps->event_queue);
                break;
            case UART_BREAK:
                FUNC1(GPS_TAG, "Rx Break");
                break;
            case UART_PARITY_ERR:
                FUNC0(GPS_TAG, "Parity Error");
                break;
            case UART_FRAME_ERR:
                FUNC0(GPS_TAG, "Frame Error");
                break;
            case UART_PATTERN_DET:
                FUNC3(esp_gps);
                break;
            default:
                FUNC1(GPS_TAG, "unknown uart event type: %d", event.type);
                break;
            }
        }
        /* Drive the event loop */
        FUNC2(esp_gps->event_loop_hdl, FUNC4(50));
    }
    FUNC6(NULL);
}