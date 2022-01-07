
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pc; } ;


 int ESP_EVENT_ANY_ID ;
 int IP_EVENT ;
 int IP_EVENT_STA_GOT_IP ;
 int WIFI_EVENT ;
 int app_prov_event_handler ;
 int esp_event_handler_unregister (int ,int ,int ) ;
 TYPE_1__* g_prov ;
 int protocomm_delete (int ) ;
 int protocomm_httpd_stop (int ) ;
 int protocomm_remove_endpoint (int ,char*) ;
 int protocomm_unset_security (int ,char*) ;
 int protocomm_unset_version (int ,char*) ;

__attribute__((used)) static void app_prov_stop_service(void)
{

    protocomm_remove_endpoint(g_prov->pc, "custom-config");

    protocomm_remove_endpoint(g_prov->pc, "prov-config");

    protocomm_unset_security(g_prov->pc, "prov-session");

    protocomm_unset_version(g_prov->pc, "proto-ver");

    protocomm_httpd_stop(g_prov->pc);

    protocomm_delete(g_prov->pc);


    esp_event_handler_unregister(WIFI_EVENT, ESP_EVENT_ANY_ID, app_prov_event_handler);
    esp_event_handler_unregister(IP_EVENT, IP_EVENT_STA_GOT_IP, app_prov_event_handler);
}
