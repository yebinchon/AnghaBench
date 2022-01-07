
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ uart_event_t ;
typedef int portTickType ;
typedef int linebuf ;
typedef scalar_t__ esp_err_t ;
struct TYPE_5__ {int max_cmdline_args; int max_cmdline_length; } ;
typedef TYPE_2__ esp_console_config_t ;
typedef int QueueHandle_t ;


 scalar_t__ UART_DATA ;
 int esp_console_init (TYPE_2__*) ;
 scalar_t__ esp_console_run (char*,int*) ;
 int memset (char*,int ,int) ;
 scalar_t__ pdPASS ;
 scalar_t__ portMAX_DELAY ;
 int stop ;
 int strlen (char*) ;
 int uart_driver_install (int,int,int ,int,int *,int ) ;
 scalar_t__ uart_read_bytes (int,char*,int,int ) ;
 int uart_write_bytes (int,char*,int) ;
 int vTaskDelete (int *) ;
 scalar_t__ xQueueReceive (int ,void*,int ) ;

__attribute__((used)) static void scli_task(void *arg)
{
    int uart_num = (int) arg;
    uint8_t linebuf[256];
    int i, cmd_ret;
    esp_err_t ret;
    QueueHandle_t uart_queue;
    uart_event_t event;

    uart_driver_install(uart_num, 256, 0, 8, &uart_queue, 0);

    esp_console_config_t console_config = {
        .max_cmdline_args = 8,
        .max_cmdline_length = 256,
    };

    esp_console_init(&console_config);

    while (!stop) {
        i = 0;
        memset(linebuf, 0, sizeof(linebuf));
        do {
            ret = xQueueReceive(uart_queue, (void * )&event, (portTickType)portMAX_DELAY);
            if (ret != pdPASS) {
                if (stop == 1) {
                    break;
                } else {
                    continue;
                }
            }
            if (event.type == UART_DATA) {
                while (uart_read_bytes(uart_num, (uint8_t *) &linebuf[i], 1, 0)) {
                    if (linebuf[i] == '\r') {
                        uart_write_bytes(uart_num, "\r\n", 2);
                    } else {
                        uart_write_bytes(uart_num, (char *) &linebuf[i], 1);
                    }
                    i++;
                }
            }
        } while ((i < 255) && linebuf[i - 1] != '\r');
        if (stop) {
            break;
        }

        linebuf[strlen((char *)linebuf) - 1] = '\0';
        ret = esp_console_run((char *) linebuf, &cmd_ret);
        if (ret < 0) {
            break;
        }
    }
    vTaskDelete(((void*)0));
}
