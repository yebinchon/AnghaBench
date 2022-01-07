
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_LOGD (int ,char*) ;
 int MAX_WIFI_IFS ;
 int TAG ;
 int _esp_wifi_clear_default_wifi_handlers () ;
 int disconnect_and_destroy (void*) ;
 void** s_wifi_netifs ;

esp_err_t esp_wifi_clear_default_wifi_driver_and_handlers(void *esp_netif)
{
    int i;
    for (i = 0; i< MAX_WIFI_IFS; ++i) {

        if (s_wifi_netifs[i] == esp_netif) {
            s_wifi_netifs[i] = ((void*)0);
        }

        if (s_wifi_netifs[i] != ((void*)0)) {
            break;
        }
    }

    if (i == MAX_WIFI_IFS) {
        ESP_LOGD(TAG, "Clearing wifi default handlers");
        _esp_wifi_clear_default_wifi_handlers();
    }
    return disconnect_and_destroy(esp_netif);
}
