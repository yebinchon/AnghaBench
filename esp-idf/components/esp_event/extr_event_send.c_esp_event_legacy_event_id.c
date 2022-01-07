
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int system_event_id_t ;
typedef int int32_t ;
typedef scalar_t__ esp_event_base_t ;


 int ESP_LOGE (int ,char*,scalar_t__) ;
 scalar_t__ IP_EVENT ;
 int SYSTEM_EVENT_MAX ;
 int TAG ;
 scalar_t__ WIFI_EVENT ;
 int esp_event_legacy_ip_event_id (int ) ;
 int esp_event_legacy_wifi_event_id (int ) ;

__attribute__((used)) static system_event_id_t esp_event_legacy_event_id(esp_event_base_t event_base, int32_t event_id)
{
    if (event_base == WIFI_EVENT) {
        return esp_event_legacy_wifi_event_id(event_id);
    } else if (event_base == IP_EVENT) {
        return esp_event_legacy_ip_event_id(event_id);
    } else {
        ESP_LOGE(TAG, "invalid event base %s", event_base);
        return SYSTEM_EVENT_MAX;
    }
}
