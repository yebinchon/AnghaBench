
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
typedef TYPE_1__ uart_event_t ;
struct TYPE_7__ {int event_loop_hdl; int event_queue; int uart_port; } ;
typedef TYPE_2__ esp_modem_dte_t ;


 int ESP_LOGE (int ,char*) ;
 int ESP_LOGW (int ,char*,...) ;
 int MODEM_TAG ;







 int esp_event_loop_run (int ,int ) ;
 int esp_handle_uart_data (TYPE_2__*) ;
 int esp_handle_uart_pattern (TYPE_2__*) ;
 int pdMS_TO_TICKS (int) ;
 int uart_flush_input (int ) ;
 int vTaskDelete (int *) ;
 scalar_t__ xQueueReceive (int ,TYPE_1__*,int ) ;
 int xQueueReset (int ) ;

__attribute__((used)) static void uart_event_task_entry(void *param)
{
    esp_modem_dte_t *esp_dte = (esp_modem_dte_t *)param;
    uart_event_t event;
    while (1) {
        if (xQueueReceive(esp_dte->event_queue, &event, pdMS_TO_TICKS(100))) {
            switch (event.type) {
            case 132:
                esp_handle_uart_data(esp_dte);
                break;
            case 131:
                ESP_LOGW(MODEM_TAG, "HW FIFO Overflow");
                uart_flush_input(esp_dte->uart_port);
                xQueueReset(esp_dte->event_queue);
                break;
            case 133:
                ESP_LOGW(MODEM_TAG, "Ring Buffer Full");
                uart_flush_input(esp_dte->uart_port);
                xQueueReset(esp_dte->event_queue);
                break;
            case 134:
                ESP_LOGW(MODEM_TAG, "Rx Break");
                break;
            case 129:
                ESP_LOGE(MODEM_TAG, "Parity Error");
                break;
            case 130:
                ESP_LOGE(MODEM_TAG, "Frame Error");
                break;
            case 128:
                esp_handle_uart_pattern(esp_dte);
                break;
            default:
                ESP_LOGW(MODEM_TAG, "unknown uart event type: %d", event.type);
                break;
            }
        }

        esp_event_loop_run(esp_dte->event_loop_hdl, pdMS_TO_TICKS(50));
    }
    vTaskDelete(((void*)0));
}
