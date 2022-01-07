
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mdns_if_t ;
typedef int esp_netif_t ;


 int MDNS_IF_MAX ;
 int ** s_esp_netifs ;

__attribute__((used)) static mdns_if_t _mdns_get_if_from_esp_netif(esp_netif_t *interface)
{
    for (int i=0; i<MDNS_IF_MAX; ++i) {
        if (interface == s_esp_netifs[i])
            return i;
    }
    return MDNS_IF_MAX;
}
