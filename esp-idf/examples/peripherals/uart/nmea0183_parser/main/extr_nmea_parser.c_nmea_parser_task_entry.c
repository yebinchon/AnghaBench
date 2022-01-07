
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
typedef TYPE_1__ uart_event_t ;
struct TYPE_6__ {int event_loop_hdl; int event_queue; int uart_port; } ;
typedef TYPE_2__ esp_gps_t ;


 int ESP_LOGE (int ,char*) ;
 int ESP_LOGW (int ,char*,...) ;
 int GPS_TAG ;







 int esp_event_loop_run (int ,int ) ;
 int esp_handle_uart_pattern (TYPE_2__*) ;
 int pdMS_TO_TICKS (int) ;
 int uart_flush (int ) ;
 int vTaskDelete (int *) ;
 scalar_t__ xQueueReceive (int ,TYPE_1__*,int ) ;
 int xQueueReset (int ) ;

__attribute__((used)) static void nmea_parser_task_entry(void *arg)
{
    esp_gps_t *esp_gps = (esp_gps_t *)arg;
    uart_event_t event;
    while (1) {
        if (xQueueReceive(esp_gps->event_queue, &event, pdMS_TO_TICKS(200))) {
            switch (event.type) {
            case 132:
                break;
            case 131:
                ESP_LOGW(GPS_TAG, "HW FIFO Overflow");
                uart_flush(esp_gps->uart_port);
                xQueueReset(esp_gps->event_queue);
                break;
            case 133:
                ESP_LOGW(GPS_TAG, "Ring Buffer Full");
                uart_flush(esp_gps->uart_port);
                xQueueReset(esp_gps->event_queue);
                break;
            case 134:
                ESP_LOGW(GPS_TAG, "Rx Break");
                break;
            case 129:
                ESP_LOGE(GPS_TAG, "Parity Error");
                break;
            case 130:
                ESP_LOGE(GPS_TAG, "Frame Error");
                break;
            case 128:
                esp_handle_uart_pattern(esp_gps);
                break;
            default:
                ESP_LOGW(GPS_TAG, "unknown uart event type: %d", event.type);
                break;
            }
        }

        esp_event_loop_run(esp_gps->event_loop_hdl, pdMS_TO_TICKS(50));
    }
    vTaskDelete(((void*)0));
}
