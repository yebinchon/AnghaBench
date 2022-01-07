
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;


 size_t WIFI_IF_AP ;
 int ** s_wifi_netifs ;
 int wifi_start (int *,int ,int ,void*) ;

__attribute__((used)) static void wifi_default_action_ap_start(void *arg, esp_event_base_t base, int32_t event_id, void *data)
{
    if (s_wifi_netifs[WIFI_IF_AP] != ((void*)0)) {
        wifi_start(s_wifi_netifs[WIFI_IF_AP], base, event_id, data);
    }
}
