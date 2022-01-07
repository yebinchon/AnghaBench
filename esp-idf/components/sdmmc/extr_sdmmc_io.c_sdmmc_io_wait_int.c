
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slot; int (* io_int_wait ) (int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ host; } ;
typedef TYPE_2__ sdmmc_card_t ;
typedef int esp_err_t ;
typedef int TickType_t ;


 int ESP_ERR_NOT_SUPPORTED ;
 int stub1 (int ,int ) ;

esp_err_t sdmmc_io_wait_int(sdmmc_card_t* card, TickType_t timeout_ticks)
{
    if (card->host.io_int_wait == ((void*)0)) {
        return ESP_ERR_NOT_SUPPORTED;
    }
    return (*card->host.io_int_wait)(card->host.slot, timeout_ticks);
}
