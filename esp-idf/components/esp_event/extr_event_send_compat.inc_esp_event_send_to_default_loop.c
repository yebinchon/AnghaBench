
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event_id; } ;
typedef TYPE_1__ system_event_t ;
typedef int esp_err_t ;
typedef int TickType_t ;


 int AP_PROBEREQRECVED ;
 int AP_STACONNECTED ;
 int AP_STADISCONNECTED ;
 int AP_STAIPASSIGNED ;
 int AP_START ;
 int AP_STOP ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ETH ;
 int ETH_CONNECTED ;
 int ETH_DISCONNECTED ;
 int ETH_GOT_IP ;
 int ETH_START ;
 int ETH_STOP ;
 int GOT_IP6 ;
 int HANDLE_SYS_EVENT (int ,int ) ;
 int HANDLE_SYS_EVENT_ARG (int ,int ,int ) ;
 int IP ;
 int SCAN_DONE ;
 int STA_AUTHMODE_CHANGE ;
 int STA_CONNECTED ;
 int STA_DISCONNECTED ;
 int STA_GOT_IP ;
 int STA_LOST_IP ;
 int STA_START ;
 int STA_STOP ;
 int STA_WPS_ER_FAILED ;
 int STA_WPS_ER_PBC_OVERLAP ;
 int STA_WPS_ER_PIN ;
 int STA_WPS_ER_SUCCESS ;
 int STA_WPS_ER_TIMEOUT ;
 int WIFI ;
 int WIFI_READY ;
 int ap_probereqrecved ;
 int auth_change ;
 int connected ;
 int disconnected ;
 int esp_system_event_debug (TYPE_1__*) ;
 int got_ip ;
 int got_ip6 ;
 int scan_done ;
 int sta_connected ;
 int sta_disconnected ;
 int sta_er_fail_reason ;
 int sta_er_pin ;

esp_err_t esp_event_send_to_default_loop(system_event_t *event)
{




    const TickType_t send_timeout = 0;
    switch (event->event_id) {

        HANDLE_SYS_EVENT(WIFI, WIFI_READY);
        HANDLE_SYS_EVENT_ARG(WIFI, SCAN_DONE, scan_done);
        HANDLE_SYS_EVENT(WIFI, STA_START);
        HANDLE_SYS_EVENT(WIFI, STA_STOP);


        HANDLE_SYS_EVENT_ARG(WIFI, STA_CONNECTED, connected);
        HANDLE_SYS_EVENT_ARG(WIFI, STA_DISCONNECTED, disconnected);
        HANDLE_SYS_EVENT_ARG(WIFI, STA_AUTHMODE_CHANGE, auth_change);


        HANDLE_SYS_EVENT(WIFI, STA_WPS_ER_SUCCESS);
        HANDLE_SYS_EVENT(WIFI, STA_WPS_ER_TIMEOUT);
        HANDLE_SYS_EVENT_ARG(WIFI, STA_WPS_ER_FAILED, sta_er_fail_reason);
        HANDLE_SYS_EVENT_ARG(WIFI, STA_WPS_ER_PIN, sta_er_pin);
        HANDLE_SYS_EVENT(WIFI, STA_WPS_ER_PBC_OVERLAP);


        HANDLE_SYS_EVENT(WIFI, AP_START);
        HANDLE_SYS_EVENT(WIFI, AP_STOP);
        HANDLE_SYS_EVENT_ARG(WIFI, AP_STACONNECTED, sta_connected);
        HANDLE_SYS_EVENT_ARG(WIFI, AP_STADISCONNECTED, sta_disconnected);
        HANDLE_SYS_EVENT_ARG(WIFI, AP_PROBEREQRECVED, ap_probereqrecved);
        HANDLE_SYS_EVENT_ARG(IP, STA_GOT_IP, got_ip);
        HANDLE_SYS_EVENT_ARG(IP, ETH_GOT_IP, got_ip);
        HANDLE_SYS_EVENT(IP, STA_LOST_IP);
        HANDLE_SYS_EVENT_ARG(IP, GOT_IP6, got_ip6);
        HANDLE_SYS_EVENT(IP, AP_STAIPASSIGNED);
        default:
            return ESP_ERR_NOT_SUPPORTED;
    }
}
