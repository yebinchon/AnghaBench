
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_netif_t ;
typedef int esp_err_t ;


 int ESP_LOGE (int ,char*,int ) ;
 int ESP_OK ;
 int TAG ;
 int esp_netif_list_lock () ;
 int esp_netif_list_unlock () ;
 int * esp_netif_next_unsafe (int *) ;

esp_netif_t* esp_netif_next(esp_netif_t* netif)
{
    esp_err_t ret;
    esp_netif_t* result;
    if ((ret = esp_netif_list_lock()) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to lock esp-netif list with %d", ret);
        return ((void*)0);
    }
    result = esp_netif_next_unsafe(netif);
    esp_netif_list_unlock();
    return result;
}
