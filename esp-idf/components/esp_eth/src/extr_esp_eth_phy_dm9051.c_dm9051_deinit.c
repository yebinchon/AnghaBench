
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_eth_phy_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_FAIL ;
 scalar_t__ ESP_OK ;
 int PHY_CHECK (int,char*,int ) ;
 scalar_t__ dm9051_pwrctl (int *,int) ;
 int err ;

__attribute__((used)) static esp_err_t dm9051_deinit(esp_eth_phy_t *phy)
{

    PHY_CHECK(dm9051_pwrctl(phy, 0) == ESP_OK, "power control failed", err);
    return ESP_OK;
err:
    return ESP_FAIL;
}
