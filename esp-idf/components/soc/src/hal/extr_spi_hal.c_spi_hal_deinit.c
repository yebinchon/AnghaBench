
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hw; } ;
typedef TYPE_1__ spi_hal_context_t ;
typedef int spi_dev_t ;


 int spi_ll_clear_int_stat (int *) ;
 int spi_ll_disable_int (int *) ;

void spi_hal_deinit(spi_hal_context_t *hal)
{
    spi_dev_t *hw = hal->hw;
    if (hw) {
        spi_ll_disable_int(hw);
        spi_ll_clear_int_stat(hw);
    }
}
