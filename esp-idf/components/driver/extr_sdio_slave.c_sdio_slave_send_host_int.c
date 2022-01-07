
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int slc0_intvec; } ;
struct TYPE_4__ {TYPE_1__ intvec_tohost; } ;


 int BIT (int) ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int SDIO_SLAVE_CHECK (int,char*,int ) ;
 TYPE_2__ SLC ;

esp_err_t sdio_slave_send_host_int(uint8_t pos)
{
    SDIO_SLAVE_CHECK(pos < 8, "interrupt num invalid", ESP_ERR_INVALID_ARG);
    SLC.intvec_tohost.slc0_intvec = BIT(pos);
    return ESP_OK;
}
