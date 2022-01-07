
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int data_len; int * data; int * mac_addr; } ;
struct TYPE_5__ {TYPE_3__ recv_cb; } ;
struct TYPE_6__ {int id; TYPE_1__ info; } ;
typedef TYPE_2__ example_espnow_event_t ;
typedef TYPE_3__ example_espnow_event_recv_cb_t ;


 int ESP_LOGE (int ,char*) ;
 int ESP_LOGW (int ,char*) ;
 int ESP_NOW_ETH_ALEN ;
 int EXAMPLE_ESPNOW_RECV_CB ;
 int TAG ;
 int free (int *) ;
 int * malloc (int) ;
 int memcpy (int *,int const*,int) ;
 scalar_t__ pdTRUE ;
 int portMAX_DELAY ;
 int s_example_espnow_queue ;
 scalar_t__ xQueueSend (int ,TYPE_2__*,int ) ;

__attribute__((used)) static void example_espnow_recv_cb(const uint8_t *mac_addr, const uint8_t *data, int len)
{
    example_espnow_event_t evt;
    example_espnow_event_recv_cb_t *recv_cb = &evt.info.recv_cb;

    if (mac_addr == ((void*)0) || data == ((void*)0) || len <= 0) {
        ESP_LOGE(TAG, "Receive cb arg error");
        return;
    }

    evt.id = EXAMPLE_ESPNOW_RECV_CB;
    memcpy(recv_cb->mac_addr, mac_addr, ESP_NOW_ETH_ALEN);
    recv_cb->data = malloc(len);
    if (recv_cb->data == ((void*)0)) {
        ESP_LOGE(TAG, "Malloc receive data fail");
        return;
    }
    memcpy(recv_cb->data, data, len);
    recv_cb->data_len = len;
    if (xQueueSend(s_example_espnow_queue, &evt, portMAX_DELAY) != pdTRUE) {
        ESP_LOGW(TAG, "Send receive queue fail");
        free(recv_cb->data);
    }
}
