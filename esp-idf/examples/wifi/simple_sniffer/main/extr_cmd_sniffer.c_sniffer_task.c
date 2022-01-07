
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sem_task_over; int pcap; int work_queue; scalar_t__ is_running; } ;
typedef TYPE_1__ sniffer_runtime_t ;
struct TYPE_5__ {int payload; int microseconds; int seconds; int length; } ;
typedef TYPE_2__ sniffer_packet_info_t ;


 int ESP_LOGW (int ,char*) ;
 scalar_t__ ESP_OK ;
 int SNIFFER_PROCESS_PACKET_TIMEOUT_MS ;
 int SNIFFER_TAG ;
 int free (int ) ;
 scalar_t__ pcap_capture_packet (int ,int ,int ,int ,int ) ;
 int pdMS_TO_TICKS (int ) ;
 scalar_t__ pdTRUE ;
 int vTaskDelete (int *) ;
 scalar_t__ xQueueReceive (int ,TYPE_2__*,int ) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void sniffer_task(void *parameters)
{
    sniffer_packet_info_t packet_info;
    sniffer_runtime_t *sniffer = (sniffer_runtime_t *)parameters;

    while (sniffer->is_running) {

        if (xQueueReceive(sniffer->work_queue, &packet_info, pdMS_TO_TICKS(SNIFFER_PROCESS_PACKET_TIMEOUT_MS)) != pdTRUE) {
            continue;
        }
        if (pcap_capture_packet(sniffer->pcap, packet_info.payload, packet_info.length,
                                packet_info.seconds, packet_info.microseconds) != ESP_OK) {
            ESP_LOGW(SNIFFER_TAG, "save captured packet failed");
        }
        free(packet_info.payload);
    }

    xSemaphoreGive(sniffer->sem_task_over);
    vTaskDelete(((void*)0));
}
