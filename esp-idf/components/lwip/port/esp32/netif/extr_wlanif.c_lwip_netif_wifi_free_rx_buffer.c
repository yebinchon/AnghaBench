
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int dummy; } ;
typedef int esp_netif_t ;


 int esp_netif_free_rx_buffer (int *,void*) ;
 int * esp_netif_get_handle_from_netif_impl (struct netif*) ;

__attribute__((used)) static void lwip_netif_wifi_free_rx_buffer(struct netif *netif, void *buf)
{
    esp_netif_t *esp_netif = esp_netif_get_handle_from_netif_impl(netif);
    esp_netif_free_rx_buffer(esp_netif, buf);
}
