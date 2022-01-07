
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int system_event_id_t ;
typedef int int32_t ;


 int ESP_LOGE (int ,char*,int) ;





 int SYSTEM_EVENT_AP_STAIPASSIGNED ;
 int SYSTEM_EVENT_ETH_GOT_IP ;
 int SYSTEM_EVENT_GOT_IP6 ;
 int SYSTEM_EVENT_MAX ;
 int SYSTEM_EVENT_STA_GOT_IP ;
 int SYSTEM_EVENT_STA_LOST_IP ;
 int TAG ;

__attribute__((used)) static system_event_id_t esp_event_legacy_ip_event_id(int32_t event_id)
{
    switch (event_id) {
    case 129:
        return SYSTEM_EVENT_STA_GOT_IP;

    case 128:
        return SYSTEM_EVENT_STA_LOST_IP;

    case 132:
        return SYSTEM_EVENT_AP_STAIPASSIGNED;

    case 130:
        return SYSTEM_EVENT_GOT_IP6;

    case 131:
        return SYSTEM_EVENT_ETH_GOT_IP;

    default:
        ESP_LOGE(TAG, "invalid ip event id %d", event_id);
        return SYSTEM_EVENT_MAX;
    }
}
