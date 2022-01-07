
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;
typedef int emac_dm9051_t ;


 scalar_t__ DM9051_BCASTCR ;
 scalar_t__ DM9051_MAR ;
 int ESP_FAIL ;
 scalar_t__ ESP_OK ;
 int MAC_CHECK (int,char*,int ,int ) ;
 scalar_t__ dm9051_register_write (int *,scalar_t__,int) ;
 int err ;

__attribute__((used)) static esp_err_t dm9051_clear_multicast_table(emac_dm9051_t *emac)
{
    esp_err_t ret = ESP_OK;

    MAC_CHECK(dm9051_register_write(emac, DM9051_BCASTCR, 0x00) == ESP_OK, "write BCASTCR failed", err, ESP_FAIL);
    for (int i = 0; i < 7; i++) {
        MAC_CHECK(dm9051_register_write(emac, DM9051_MAR + i, 0x00) == ESP_OK, "write MAR failed", err, ESP_FAIL);
    }

    MAC_CHECK(dm9051_register_write(emac, DM9051_MAR + 7, 0x80) == ESP_OK, "write MAR failed", err, ESP_FAIL);
    return ESP_OK;
err:
    return ret;
}
