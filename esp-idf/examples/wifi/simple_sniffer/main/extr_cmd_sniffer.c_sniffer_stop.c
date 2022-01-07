
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int is_running; int interf; int pcap; int * work_queue; int * sem_task_over; } ;
typedef TYPE_1__ sniffer_runtime_t ;
struct TYPE_6__ {int payload; } ;
typedef TYPE_2__ sniffer_packet_info_t ;
typedef scalar_t__ esp_err_t ;
typedef int UBaseType_t ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int SNIFFER_CHECK (int,char*,int ) ;

 int SNIFFER_PROCESS_PACKET_TIMEOUT_MS ;
 int SNIFFER_TAG ;
 int err ;
 scalar_t__ esp_wifi_set_promiscuous (int) ;
 int free (int ) ;
 scalar_t__ pcap_deinit (int ) ;
 int pdMS_TO_TICKS (int ) ;
 int portMAX_DELAY ;
 int uxQueueMessagesWaiting (int *) ;
 int vQueueDelete (int *) ;
 int vSemaphoreDelete (int *) ;
 int xQueueReceive (int *,TYPE_2__*,int ) ;
 int xSemaphoreTake (int *,int ) ;

__attribute__((used)) static esp_err_t sniffer_stop(sniffer_runtime_t *sniffer)
{
    SNIFFER_CHECK(sniffer->is_running, "sniffer is already stopped", err);

    switch (sniffer->interf) {
    case 128:

        SNIFFER_CHECK(esp_wifi_set_promiscuous(0) == ESP_OK, "stop wifi promiscuous failed", err);
        break;
    default:
        SNIFFER_CHECK(0, "unsupported interface", err);
        break;
    }
    ESP_LOGI(SNIFFER_TAG, "stop WiFi promiscuous ok");


    sniffer->is_running = 0;

    xSemaphoreTake(sniffer->sem_task_over, portMAX_DELAY);
    vSemaphoreDelete(sniffer->sem_task_over);
    sniffer->sem_task_over = ((void*)0);

    UBaseType_t left_items = uxQueueMessagesWaiting(sniffer->work_queue);
    sniffer_packet_info_t packet_info;
    while (left_items--) {
        xQueueReceive(sniffer->work_queue, &packet_info, pdMS_TO_TICKS(SNIFFER_PROCESS_PACKET_TIMEOUT_MS));
        free(packet_info.payload);
    }
    vQueueDelete(sniffer->work_queue);
    sniffer->work_queue = ((void*)0);

    SNIFFER_CHECK(pcap_deinit(sniffer->pcap) == ESP_OK, "stop pcap session failed", err);
    return ESP_OK;
err:
    return ESP_FAIL;
}
