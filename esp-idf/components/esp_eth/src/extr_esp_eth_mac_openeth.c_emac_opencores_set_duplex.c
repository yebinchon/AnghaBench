
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eth_duplex_t ;
typedef int esp_eth_mac_t ;
typedef int esp_err_t ;


 int ESP_OK ;

__attribute__((used)) static esp_err_t emac_opencores_set_duplex(esp_eth_mac_t *mac, eth_duplex_t duplex)
{

    return ESP_OK;
}
