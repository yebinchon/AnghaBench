
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_netif_t ;
typedef int esp_netif_config_t ;


 int ESP_NETIF_DEFAULT_WIFI_AP () ;
 int assert (int *) ;
 int esp_netif_attach_wifi_ap (int *) ;
 int * esp_netif_new (int *) ;
 int esp_wifi_set_default_wifi_ap_handlers () ;

esp_netif_t* esp_netif_create_default_wifi_ap(void)
{
    esp_netif_config_t cfg = ESP_NETIF_DEFAULT_WIFI_AP();
    esp_netif_t *netif = esp_netif_new(&cfg);
    assert(netif);
    esp_netif_attach_wifi_ap(netif);
    esp_wifi_set_default_wifi_ap_handlers();
    return netif;
}
