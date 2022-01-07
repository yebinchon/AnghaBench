
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ esp_err_t ;
typedef int emac_dm9051_t ;


 int DM9051_IMR ;
 int DM9051_RCR ;
 int ESP_FAIL ;
 scalar_t__ ESP_OK ;
 int MAC_CHECK (int,char*,int ,int ) ;
 int RCR_RXEN ;
 scalar_t__ dm9051_register_read (int *,int ,int*) ;
 scalar_t__ dm9051_register_write (int *,int ,int) ;
 int err ;

__attribute__((used)) static esp_err_t dm9051_stop(emac_dm9051_t *emac)
{
    esp_err_t ret = ESP_OK;

    MAC_CHECK(dm9051_register_write(emac, DM9051_IMR, 0x00) == ESP_OK, "write IMR failed", err, ESP_FAIL);

    uint8_t rcr = 0;
    MAC_CHECK(dm9051_register_read(emac, DM9051_RCR, &rcr) == ESP_OK, "read RCR failed", err, ESP_FAIL);
    rcr &= ~RCR_RXEN;
    MAC_CHECK(dm9051_register_write(emac, DM9051_RCR, rcr) == ESP_OK, "write RCR failed", err, ESP_FAIL);
    return ESP_OK;
err:
    return ret;
}
