
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ esp_err_t ;
struct TYPE_4__ {int * addr; } ;
typedef TYPE_1__ emac_dm9051_t ;


 scalar_t__ DM9051_PAR ;
 int ESP_FAIL ;
 scalar_t__ ESP_OK ;
 int MAC_CHECK (int,char*,int ,int ) ;
 scalar_t__ dm9051_register_read (TYPE_1__*,scalar_t__,int *) ;
 int err ;

__attribute__((used)) static esp_err_t dm9051_get_mac_addr(emac_dm9051_t *emac)
{
    esp_err_t ret = ESP_OK;
    for (int i = 0; i < 6; i++) {
        MAC_CHECK(dm9051_register_read(emac, DM9051_PAR + i, &emac->addr[i]) == ESP_OK, "read PAR failed", err, ESP_FAIL);
    }
    return ESP_OK;
err:
    return ret;
}
