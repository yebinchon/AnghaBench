
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eth_speed_t ;
typedef int esp_eth_mac_t ;
typedef int esp_err_t ;


 int ESP_OK ;

__attribute__((used)) static esp_err_t emac_opencores_set_speed(esp_eth_mac_t *mac, eth_speed_t speed)
{

    return ESP_OK;
}
