
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t mdns_if_t ;
typedef int esp_netif_t ;


 size_t MDNS_IF_MAX ;
 int ** s_esp_netifs ;

esp_netif_t *_mdns_get_esp_netif(mdns_if_t tcpip_if)
{
    if (tcpip_if < MDNS_IF_MAX) {
        return s_esp_netifs[tcpip_if];
    }
    return ((void*)0);
}
