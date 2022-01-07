
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hw; } ;
typedef TYPE_1__ spi_hal_context_t ;


 int spi_ll_user_start (int ) ;

void spi_hal_user_start(const spi_hal_context_t *hal)
{
    spi_ll_user_start(hal->hw);
}
