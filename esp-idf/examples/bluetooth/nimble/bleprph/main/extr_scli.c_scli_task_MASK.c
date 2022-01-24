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
typedef  int /*<<< orphan*/  portTickType ;
typedef  int /*<<< orphan*/  linebuf ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_5__ {int max_cmdline_args; int max_cmdline_length; } ;
typedef  TYPE_2__ esp_console_config_t ;
typedef  int /*<<< orphan*/  QueueHandle_t ;

/* Variables and functions */
 scalar_t__ UART_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ pdPASS ; 
 scalar_t__ portMAX_DELAY ; 
 int stop ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void *arg)
{
    int uart_num = (int) arg;
    uint8_t linebuf[256];
    int i, cmd_ret;
    esp_err_t ret;
    QueueHandle_t uart_queue;
    uart_event_t event;

    FUNC4(uart_num, 256, 0, 8, &uart_queue, 0);
    /* Initialize the console */
    esp_console_config_t console_config = {
        .max_cmdline_args = 8,
        .max_cmdline_length = 256,
    };

    FUNC0(&console_config);

    while (!stop) {
        i = 0;
        FUNC2(linebuf, 0, sizeof(linebuf));
        do {
            ret = FUNC8(uart_queue, (void * )&event, (portTickType)portMAX_DELAY);
            if (ret != pdPASS) {
                if (stop == 1) {
                    break;
                } else {
                    continue;
                }
            }
            if (event.type == UART_DATA) {
                while (FUNC5(uart_num, (uint8_t *) &linebuf[i], 1, 0)) {
                    if (linebuf[i] == '\r') {
                        FUNC6(uart_num, "\r\n", 2);
                    } else {
                        FUNC6(uart_num, (char *) &linebuf[i], 1);
                    }
                    i++;
                }
            }
        } while ((i < 255) && linebuf[i - 1] != '\r');
        if (stop) {
            break;
        }
        /* Remove the truncating \r\n */
        linebuf[FUNC3((char *)linebuf) - 1] = '\0';
        ret = FUNC1((char *) linebuf, &cmd_ret);
        if (ret < 0) {
            break;
        }
    }
    FUNC7(NULL);
}