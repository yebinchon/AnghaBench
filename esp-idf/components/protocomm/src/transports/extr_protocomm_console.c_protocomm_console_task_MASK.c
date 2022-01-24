#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef  TYPE_1__ uart_event_t ;
typedef  int /*<<< orphan*/  linebuf ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_5__ {int max_cmdline_args; int max_cmdline_length; } ;
typedef  TYPE_2__ esp_console_config_t ;
typedef  int TickType_t ;
typedef  int /*<<< orphan*/  QueueHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ UART_DATA ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * pc_console ; 
 scalar_t__ pdPASS ; 
 int portTICK_RATE_MS ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static void FUNC14(void *arg)
{
    int uart_num = (int) arg;
    uint8_t linebuf[256];
    int i, cmd_ret;
    esp_err_t ret;
    QueueHandle_t uart_queue;
    uart_event_t event;

    FUNC0(TAG, "Initializing UART on port %d", uart_num);
    FUNC9(uart_num, 256, 0, 8, &uart_queue, 0);
    /* Initialize the console */
    esp_console_config_t console_config = {
            .max_cmdline_args = 8,
            .max_cmdline_length = 256,
    };

    FUNC4(&console_config);
    FUNC5();

    while (!FUNC8()) {
        FUNC11(uart_num, "\n>> ", 4);
        FUNC7(linebuf, 0, sizeof(linebuf));
        i = 0;
        do {
            ret = FUNC13(uart_queue, (void * )&event, (TickType_t) 10/portTICK_RATE_MS);
            if (ret != pdPASS) {
                if (FUNC8()) {
                    break;
                } else {
                    continue;
                }
            }
            if (event.type == UART_DATA) {
                while (FUNC10(uart_num, (uint8_t *) &linebuf[i], 1, 0)) {
                    if (linebuf[i] == '\r') {
                        FUNC11(uart_num, "\r\n", 2);
                    } else {
                        FUNC11(uart_num, (char *) &linebuf[i], 1);
                    }
                    i++;
                }
            }
        } while ((i < 255) && linebuf[i-1] != '\r');
        if (FUNC8()) {
            break;
        }
        ret = FUNC6((char *) linebuf, &cmd_ret);
        if (ret < 0) {
            FUNC1(TAG, "Console dispatcher error\n");
            break;
        }
    }

    pc_console = NULL;
    FUNC3();

    FUNC2(TAG, "Console stopped");
    FUNC12(NULL);
}