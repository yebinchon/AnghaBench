
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reason; } ;
typedef TYPE_1__ wifi_event_sta_disconnected_t ;
typedef scalar_t__ esp_event_base_t ;
struct TYPE_4__ {void* wifi_state; int wifi_disconnect_reason; scalar_t__ timer; } ;


 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 int TAG ;
 scalar_t__ WIFI_EVENT ;
 int WIFI_EVENT_STA_DISCONNECTED ;
 int WIFI_EVENT_STA_START ;
 int WIFI_PROV_STA_AP_NOT_FOUND ;
 int WIFI_PROV_STA_AUTH_ERROR ;
 void* WIFI_PROV_STA_CONNECTED ;
 void* WIFI_PROV_STA_CONNECTING ;
 void* WIFI_PROV_STA_DISCONNECTED ;







 int esp_timer_start_once (scalar_t__,int) ;
 int esp_wifi_connect () ;
 TYPE_2__* g_prov ;

__attribute__((used)) static void app_prov_event_handler(void* handler_arg, esp_event_base_t event_base,
                                   int event_id, void* event_data)
{


    if (!g_prov) {
        return;
    }

    if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START) {
        ESP_LOGI(TAG, "STA Start");




        g_prov->wifi_state = WIFI_PROV_STA_CONNECTING;
    } else if (event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP) {
        ESP_LOGI(TAG, "STA Got IP");


        g_prov->wifi_state = WIFI_PROV_STA_CONNECTED;
        if (g_prov && g_prov->timer) {
            esp_timer_start_once(g_prov->timer, 30000*1000U);
        }
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        ESP_LOGE(TAG, "STA Disconnected");

        g_prov->wifi_state = WIFI_PROV_STA_DISCONNECTED;

        wifi_event_sta_disconnected_t* disconnected = (wifi_event_sta_disconnected_t*) event_data;
        ESP_LOGE(TAG, "Disconnect reason : %d", disconnected->reason);


        switch (disconnected->reason) {
        case 132:
        case 134:
        case 130:
        case 131:
        case 133:
        case 129:
            ESP_LOGI(TAG, "STA Auth Error");
            g_prov->wifi_disconnect_reason = WIFI_PROV_STA_AUTH_ERROR;
            break;
        case 128:
            ESP_LOGI(TAG, "STA AP Not found");
            g_prov->wifi_disconnect_reason = WIFI_PROV_STA_AP_NOT_FOUND;
            break;
        default:


            g_prov->wifi_state = WIFI_PROV_STA_CONNECTING;
            esp_wifi_connect();
        }
    }
}
