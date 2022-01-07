
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int netif_cfg ;
typedef int esp_netif_t ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ esp_netif_inherent_config_t ;
struct TYPE_6__ {int stack; TYPE_1__* base; } ;
typedef TYPE_2__ esp_netif_config_t ;
typedef int esp_err_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_NETIF_BASE_DEFAULT_WIFI_AP ;
 int ESP_NETIF_BASE_DEFAULT_WIFI_STA ;
 int ESP_NETIF_DHCP_CLIENT ;
 int ESP_NETIF_DHCP_SERVER ;
 int ESP_NETIF_NETSTACK_DEFAULT_WIFI_AP ;
 int ESP_NETIF_NETSTACK_DEFAULT_WIFI_STA ;
 int ESP_OK ;
 int assert (int *) ;
 int esp_netif_attach_wifi_ap (int *) ;
 int esp_netif_attach_wifi_station (int *) ;
 int esp_netif_dhcpc_stop (int *) ;
 int esp_netif_dhcps_stop (int *) ;
 int * esp_netif_new (TYPE_2__*) ;
 int esp_wifi_set_default_wifi_ap_handlers () ;
 int esp_wifi_set_default_wifi_sta_handlers () ;
 int memcpy (TYPE_1__*,int ,int) ;

esp_err_t esp_netif_create_default_wifi_mesh_netifs(esp_netif_t **p_netif_sta, esp_netif_t **p_netif_ap)
{

    esp_netif_inherent_config_t netif_cfg;
    memcpy(&netif_cfg, ESP_NETIF_BASE_DEFAULT_WIFI_AP, sizeof(netif_cfg));
    netif_cfg.flags &= ~ESP_NETIF_DHCP_SERVER;
    esp_netif_config_t cfg_ap = {
            .base = &netif_cfg,
            .stack = ESP_NETIF_NETSTACK_DEFAULT_WIFI_AP,
    };
    esp_netif_t *netif_ap = esp_netif_new(&cfg_ap);
    assert(netif_ap);
    ESP_ERROR_CHECK(esp_netif_attach_wifi_ap(netif_ap));
    ESP_ERROR_CHECK(esp_wifi_set_default_wifi_ap_handlers());


    ESP_ERROR_CHECK(esp_netif_dhcps_stop(netif_ap));


    memcpy(&netif_cfg, ESP_NETIF_BASE_DEFAULT_WIFI_STA, sizeof(netif_cfg));
    netif_cfg.flags &= ~ESP_NETIF_DHCP_CLIENT;
    esp_netif_config_t cfg_sta = {
            .base = &netif_cfg,
            .stack = ESP_NETIF_NETSTACK_DEFAULT_WIFI_STA,
    };
    esp_netif_t *netif_sta = esp_netif_new(&cfg_sta);
    assert(netif_sta);
    ESP_ERROR_CHECK(esp_netif_attach_wifi_station(netif_sta));
    ESP_ERROR_CHECK(esp_wifi_set_default_wifi_sta_handlers());


    ESP_ERROR_CHECK(esp_netif_dhcpc_stop(netif_sta));

    if (p_netif_sta) {
        *p_netif_sta = netif_sta;
    }
    if (p_netif_ap) {
        *p_netif_ap = netif_ap;
    }
    return ESP_OK;
}
