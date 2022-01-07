
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_wifi_unregister_wpa_cb_internal () ;

int esp_supplicant_deinit(void)
{
    return esp_wifi_unregister_wpa_cb_internal();
}
