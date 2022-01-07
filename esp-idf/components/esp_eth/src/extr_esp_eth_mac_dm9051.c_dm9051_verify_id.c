
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ esp_err_t ;
typedef int emac_dm9051_t ;


 int DM9051_PIDH ;
 int DM9051_PIDL ;
 int DM9051_VIDH ;
 int DM9051_VIDL ;
 int ESP_ERR_INVALID_VERSION ;
 int ESP_FAIL ;
 scalar_t__ ESP_OK ;
 int MAC_CHECK (int,char*,int ,int ) ;
 scalar_t__ dm9051_register_read (int *,int ,int*) ;
 int err ;

__attribute__((used)) static esp_err_t dm9051_verify_id(emac_dm9051_t *emac)
{
    esp_err_t ret = ESP_OK;
    uint8_t id[2];
    MAC_CHECK(dm9051_register_read(emac, DM9051_VIDL, &id[0]) == ESP_OK, "read VIDL failed", err, ESP_FAIL);
    MAC_CHECK(dm9051_register_read(emac, DM9051_VIDH, &id[1]) == ESP_OK, "read VIDH failed", err, ESP_FAIL);
    MAC_CHECK(0x0A == id[1] && 0x46 == id[0], "wrong Vendor ID", err, ESP_ERR_INVALID_VERSION);
    MAC_CHECK(dm9051_register_read(emac, DM9051_PIDL, &id[0]) == ESP_OK, "read PIDL failed", err, ESP_FAIL);
    MAC_CHECK(dm9051_register_read(emac, DM9051_PIDH, &id[1]) == ESP_OK, "read PIDH failed", err, ESP_FAIL);
    MAC_CHECK(0x90 == id[1] && 0x51 == id[0], "wrong Product ID", err, ESP_ERR_INVALID_VERSION);
    return ESP_OK;
err:
    return ret;
}
