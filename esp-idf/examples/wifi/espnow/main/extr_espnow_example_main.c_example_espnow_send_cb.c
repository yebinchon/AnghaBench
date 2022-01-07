
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int status; int mac_addr; } ;
struct TYPE_5__ {TYPE_3__ send_cb; } ;
struct TYPE_6__ {int id; TYPE_1__ info; } ;
typedef TYPE_2__ example_espnow_event_t ;
typedef TYPE_3__ example_espnow_event_send_cb_t ;
typedef int esp_now_send_status_t ;


 int ESP_LOGE (int ,char*) ;
 int ESP_LOGW (int ,char*) ;
 int ESP_NOW_ETH_ALEN ;
 int EXAMPLE_ESPNOW_SEND_CB ;
 int TAG ;
 int memcpy (int ,int const*,int ) ;
 scalar_t__ pdTRUE ;
 int portMAX_DELAY ;
 int s_example_espnow_queue ;
 scalar_t__ xQueueSend (int ,TYPE_2__*,int ) ;

__attribute__((used)) static void example_espnow_send_cb(const uint8_t *mac_addr, esp_now_send_status_t status)
{
    example_espnow_event_t evt;
    example_espnow_event_send_cb_t *send_cb = &evt.info.send_cb;

    if (mac_addr == ((void*)0)) {
        ESP_LOGE(TAG, "Send cb arg error");
        return;
    }

    evt.id = EXAMPLE_ESPNOW_SEND_CB;
    memcpy(send_cb->mac_addr, mac_addr, ESP_NOW_ETH_ALEN);
    send_cb->status = status;
    if (xQueueSend(s_example_espnow_queue, &evt, portMAX_DELAY) != pdTRUE) {
        ESP_LOGW(TAG, "Send send queue fail");
    }
}
