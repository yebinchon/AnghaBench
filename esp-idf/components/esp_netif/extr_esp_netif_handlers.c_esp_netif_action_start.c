
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;


 int ESP_LOGD (int ,char*,void*,int ) ;
 int TAG ;
 int esp_netif_start (void*) ;

void esp_netif_action_start(void *esp_netif, esp_event_base_t base, int32_t event_id, void *data)
{
    ESP_LOGD(TAG, "esp_netif action has started with netif%p from event_id=%d", esp_netif, event_id);
    esp_netif_start(esp_netif);
}
