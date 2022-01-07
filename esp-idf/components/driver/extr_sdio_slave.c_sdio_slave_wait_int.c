
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int esp_err_t ;
typedef int TickType_t ;
struct TYPE_2__ {int * events; } ;


 int ESP_ERR_INVALID_ARG ;
 int SDIO_SLAVE_CHECK (int,char*,int ) ;
 TYPE_1__ context ;
 int xSemaphoreTake (int ,int ) ;

esp_err_t sdio_slave_wait_int(int pos, TickType_t wait)
{
    SDIO_SLAVE_CHECK(pos >= 0 && pos < 8, "interrupt num invalid", ESP_ERR_INVALID_ARG);
    return xSemaphoreTake(context.events[pos], wait);
}
