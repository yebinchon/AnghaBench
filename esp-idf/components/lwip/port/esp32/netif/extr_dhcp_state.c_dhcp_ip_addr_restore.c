
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct netif {int dummy; } ;
struct TYPE_2__ {int addr; } ;
struct dhcp {TYPE_1__ offered_ip_addr; } ;
typedef int nvs_handle_t ;
typedef int esp_netif_t ;


 int DHCP_NAMESPACE ;
 scalar_t__ ESP_OK ;
 int NVS_READONLY ;
 scalar_t__ VALID_NETIF_ID (int *) ;
 int * esp_netif_get_handle_from_netif_impl (void*) ;
 int esp_netif_get_ifkey (int *) ;
 struct dhcp* netif_dhcp_data (struct netif*) ;
 int nvs_close (int ) ;
 scalar_t__ nvs_get_u32 (int ,int ,int *) ;
 scalar_t__ nvs_open (int ,int ,int *) ;

bool dhcp_ip_addr_restore(void *netif)
{
    nvs_handle_t nvs;
    bool err = 0;
    struct netif *net = (struct netif *)netif;
    struct dhcp *dhcp = netif_dhcp_data(net);
    esp_netif_t *esp_netif = esp_netif_get_handle_from_netif_impl(netif);

    if(VALID_NETIF_ID(esp_netif)) {
        uint32_t *ip_addr = &dhcp->offered_ip_addr.addr;
        if (nvs_open(DHCP_NAMESPACE, NVS_READONLY, &nvs) == ESP_OK) {
            if (nvs_get_u32(nvs, esp_netif_get_ifkey(esp_netif), ip_addr) == ESP_OK) {
                err = 1;
            }
            nvs_close(nvs);
        }
    }
    return err;
}
