
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_netif_t ;
typedef int esp_err_t ;


 int ESP_LOGE (int ,char*,int ) ;
 int ESP_OK ;
 int TAG ;
 int esp_netif_get_ifkey (int *) ;
 int esp_netif_list_lock () ;
 int esp_netif_list_unlock () ;
 int * esp_netif_next_unsafe (int *) ;
 scalar_t__ strcmp (char const*,int ) ;

esp_netif_t *esp_netif_get_handle_from_ifkey(const char *if_key)
{
    esp_err_t ret;
    if ((ret = esp_netif_list_lock()) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to lock esp-netif list with %d", ret);
        return ((void*)0);
    }

    esp_netif_t *esp_netif = esp_netif_next_unsafe(((void*)0));
    do {
        if (esp_netif && strcmp(if_key, esp_netif_get_ifkey(esp_netif))==0) {
            esp_netif_list_unlock();
            return esp_netif;
        }
    } while (((void*)0) != (esp_netif = esp_netif_next_unsafe(esp_netif)));
    esp_netif_list_unlock();
    return ((void*)0);
}
