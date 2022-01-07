
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_eth_mac_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int OPENETH_MODER_REG ;
 int OPENETH_PRO ;
 int REG_CLR_BIT (int ,int ) ;
 int REG_SET_BIT (int ,int ) ;

__attribute__((used)) static esp_err_t emac_opencores_set_promiscuous(esp_eth_mac_t *mac, bool enable)
{
    if (enable) {
        REG_SET_BIT(OPENETH_MODER_REG, OPENETH_PRO);
    } else {
        REG_CLR_BIT(OPENETH_MODER_REG, OPENETH_PRO);
    }
    return ESP_OK;
}
