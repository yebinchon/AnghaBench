
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
 int NVS_READWRITE ;
 scalar_t__ VALID_NETIF_ID (int *) ;
 int * esp_netif_get_handle_from_netif_impl (void*) ;
 int esp_netif_get_ifkey (int *) ;
 struct dhcp* netif_dhcp_data (struct netif*) ;
 int nvs_close (int ) ;
 int nvs_commit (int ) ;
 scalar_t__ nvs_open (int ,int ,int *) ;
 int nvs_set_u32 (int ,int ,int ) ;

void dhcp_ip_addr_store(void *netif)
{
    nvs_handle_t nvs;
    struct netif *net = (struct netif *)netif;
    struct dhcp *dhcp = netif_dhcp_data(net);
    uint32_t ip_addr = dhcp->offered_ip_addr.addr;
    esp_netif_t *esp_netif = esp_netif_get_handle_from_netif_impl(netif);

    if(VALID_NETIF_ID(esp_netif)) {
        if (nvs_open(DHCP_NAMESPACE, NVS_READWRITE, &nvs) == ESP_OK) {
            nvs_set_u32(nvs,esp_netif_get_ifkey(esp_netif), ip_addr);
            nvs_commit(nvs);
            nvs_close(nvs);
        }
    }
}
