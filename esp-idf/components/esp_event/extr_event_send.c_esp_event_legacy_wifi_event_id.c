
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int system_event_id_t ;
typedef int int32_t ;


 int ESP_LOGE (int ,char*,int) ;
 int SYSTEM_EVENT_AP_PROBEREQRECVED ;
 int SYSTEM_EVENT_AP_STACONNECTED ;
 int SYSTEM_EVENT_AP_STADISCONNECTED ;
 int SYSTEM_EVENT_AP_START ;
 int SYSTEM_EVENT_AP_STOP ;
 int SYSTEM_EVENT_MAX ;
 int SYSTEM_EVENT_SCAN_DONE ;
 int SYSTEM_EVENT_STA_AUTHMODE_CHANGE ;
 int SYSTEM_EVENT_STA_CONNECTED ;
 int SYSTEM_EVENT_STA_DISCONNECTED ;
 int SYSTEM_EVENT_STA_START ;
 int SYSTEM_EVENT_STA_STOP ;
 int SYSTEM_EVENT_STA_WPS_ER_FAILED ;
 int SYSTEM_EVENT_STA_WPS_ER_PBC_OVERLAP ;
 int SYSTEM_EVENT_STA_WPS_ER_PIN ;
 int SYSTEM_EVENT_STA_WPS_ER_SUCCESS ;
 int SYSTEM_EVENT_STA_WPS_ER_TIMEOUT ;
 int SYSTEM_EVENT_WIFI_READY ;
 int TAG ;
__attribute__((used)) static system_event_id_t esp_event_legacy_wifi_event_id(int32_t event_id)
{
    switch (event_id) {
    case 128:
        return SYSTEM_EVENT_WIFI_READY;

    case 139:
        return SYSTEM_EVENT_SCAN_DONE;

    case 135:
        return SYSTEM_EVENT_STA_START;

    case 134:
        return SYSTEM_EVENT_STA_STOP;

    case 137:
        return SYSTEM_EVENT_STA_CONNECTED;

    case 136:
        return SYSTEM_EVENT_STA_DISCONNECTED;

    case 138:
        return SYSTEM_EVENT_STA_AUTHMODE_CHANGE;

    case 130:
        return SYSTEM_EVENT_STA_WPS_ER_SUCCESS;

    case 133:
        return SYSTEM_EVENT_STA_WPS_ER_FAILED;

    case 129:
        return SYSTEM_EVENT_STA_WPS_ER_TIMEOUT;

    case 131:
        return SYSTEM_EVENT_STA_WPS_ER_PIN;

    case 132:
        return SYSTEM_EVENT_STA_WPS_ER_PBC_OVERLAP;

    case 141:
        return SYSTEM_EVENT_AP_START;

    case 140:
        return SYSTEM_EVENT_AP_STOP;

    case 143:
        return SYSTEM_EVENT_AP_STACONNECTED;

    case 142:
        return SYSTEM_EVENT_AP_STADISCONNECTED;

    case 144:
        return SYSTEM_EVENT_AP_PROBEREQRECVED;

    default:
        ESP_LOGE(TAG, "invalid wifi event id %d", event_id);
        return SYSTEM_EVENT_MAX;
    }
}
