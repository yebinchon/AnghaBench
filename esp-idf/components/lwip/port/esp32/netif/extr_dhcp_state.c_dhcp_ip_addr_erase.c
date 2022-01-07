
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvs_handle_t ;


 int DHCP_NAMESPACE ;
 scalar_t__ ESP_OK ;
 int NVS_READWRITE ;
 scalar_t__ VALID_NETIF_ID (void*) ;
 int esp_netif_get_ifkey (void*) ;
 int nvs_close (int ) ;
 int nvs_commit (int ) ;
 int nvs_erase_key (int ,int ) ;
 scalar_t__ nvs_open (int ,int ,int *) ;

void dhcp_ip_addr_erase(void *esp_netif)
{
    nvs_handle_t nvs;

    if(VALID_NETIF_ID(esp_netif)) {
        if (nvs_open(DHCP_NAMESPACE, NVS_READWRITE, &nvs) == ESP_OK) {
            nvs_erase_key(nvs, esp_netif_get_ifkey(esp_netif));
            nvs_commit(nvs);
            nvs_close(nvs);
        }
    }
}
