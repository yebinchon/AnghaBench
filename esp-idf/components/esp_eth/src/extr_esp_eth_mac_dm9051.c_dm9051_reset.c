
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_5__ {int sw_reset_timeout_ms; } ;
typedef TYPE_1__ emac_dm9051_t ;


 int DM9051_GPR ;
 int DM9051_NCR ;
 int ESP_ERR_TIMEOUT ;
 int ESP_FAIL ;
 scalar_t__ ESP_OK ;
 int MAC_CHECK (int,char*,int ,int ) ;
 int NCR_RST ;
 scalar_t__ dm9051_register_read (TYPE_1__*,int ,int*) ;
 scalar_t__ dm9051_register_write (TYPE_1__*,int ,int) ;
 int err ;
 int pdMS_TO_TICKS (int) ;
 int vTaskDelay (int ) ;

__attribute__((used)) static esp_err_t dm9051_reset(emac_dm9051_t *emac)
{
    esp_err_t ret = ESP_OK;

    MAC_CHECK(dm9051_register_write(emac, DM9051_GPR, 0x00) == ESP_OK, "write GPR failed", err, ESP_FAIL);

    vTaskDelay(pdMS_TO_TICKS(10));

    uint8_t ncr = NCR_RST;
    MAC_CHECK(dm9051_register_write(emac, DM9051_NCR, ncr) == ESP_OK, "write NCR failed", err, ESP_FAIL);
    uint32_t to = 0;
    for (to = 0; to < emac->sw_reset_timeout_ms / 10; to++) {
        MAC_CHECK(dm9051_register_read(emac, DM9051_NCR, &ncr) == ESP_OK, "read NCR failed", err, ESP_FAIL);
        if (!(ncr & NCR_RST)) {
            break;
        }
        vTaskDelay(pdMS_TO_TICKS(10));
    }
    MAC_CHECK(to < emac->sw_reset_timeout_ms / 10, "reset timeout", err, ESP_ERR_TIMEOUT);
    return ESP_OK;
err:
    return ret;
}
