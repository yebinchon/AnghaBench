
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slot; int (* io_int_enable ) (int ) ;} ;
struct TYPE_5__ {TYPE_1__ host; } ;
typedef TYPE_2__ sdmmc_card_t ;
typedef int esp_err_t ;


 int ESP_ERR_NOT_SUPPORTED ;
 int stub1 (int ) ;

esp_err_t sdmmc_io_enable_int(sdmmc_card_t* card)
{
    if (card->host.io_int_enable == ((void*)0)) {
        return ESP_ERR_NOT_SUPPORTED;
    }
    return (*card->host.io_int_enable)(card->host.slot);
}
