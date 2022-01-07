
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef scalar_t__ esp_event_base_t ;


 int CONNECTED_BIT ;
 scalar_t__ IP_EVENT ;
 scalar_t__ IP_EVENT_STA_GOT_IP ;
 scalar_t__ WIFI_EVENT ;
 scalar_t__ WIFI_EVENT_STA_DISCONNECTED ;
 int esp_wifi_connect () ;
 int wifi_event_group ;
 int xEventGroupClearBits (int ,int ) ;
 int xEventGroupSetBits (int ,int ) ;

__attribute__((used)) static void event_handler(void* arg, esp_event_base_t event_base,
                                int32_t event_id, void* event_data)
{
    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        esp_wifi_connect();
        xEventGroupClearBits(wifi_event_group, CONNECTED_BIT);
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        xEventGroupSetBits(wifi_event_group, CONNECTED_BIT);
    }
}
