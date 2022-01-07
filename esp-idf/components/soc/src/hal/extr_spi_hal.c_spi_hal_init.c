
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * hw; } ;
typedef TYPE_1__ spi_hal_context_t ;
typedef int spi_dev_t ;
struct TYPE_6__ {int * hw; } ;


 int memset (TYPE_1__*,int ,int) ;
 int spi_ll_enable_int (int *) ;
 int spi_ll_master_init (int *) ;
 int spi_ll_set_int_stat (int *) ;
 int spi_ll_set_mosi_delay (int *,int ,int ) ;
 TYPE_2__* spi_periph_signal ;

void spi_hal_init(spi_hal_context_t *hal, int host_id)
{
    memset(hal, 0, sizeof(spi_hal_context_t));
    spi_dev_t *hw = spi_periph_signal[host_id].hw;
    hal->hw = hw;
    spi_ll_master_init(hw);





    spi_ll_enable_int(hw);
    spi_ll_set_int_stat(hw);
    spi_ll_set_mosi_delay(hw, 0, 0);
}
