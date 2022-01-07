
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_netif_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 size_t WIFI_IF_AP ;
 int create_and_attach (size_t,int *) ;
 int ** s_wifi_netifs ;

esp_err_t esp_netif_attach_wifi_ap(esp_netif_t *esp_netif)
{
    if (esp_netif == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    s_wifi_netifs[WIFI_IF_AP] = esp_netif;
    return create_and_attach(WIFI_IF_AP, esp_netif);
}
