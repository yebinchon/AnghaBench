
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * hw; } ;
typedef TYPE_1__ spi_slave_hal_context_t ;
typedef int spi_dev_t ;
struct TYPE_6__ {int * hw; } ;


 int SPI_LL_INT_TYPE_NORMAL ;
 int memset (TYPE_1__*,int ,int) ;
 int spi_ll_set_int_stat (int *) ;
 int spi_ll_slave_init (int *) ;
 int spi_ll_slave_set_int_type (int *,int ) ;
 TYPE_3__* spi_periph_signal ;

void spi_slave_hal_init(spi_slave_hal_context_t *hal, int host_id)
{
    memset(hal, 0, sizeof(spi_slave_hal_context_t));
    spi_dev_t *hw = spi_periph_signal[host_id].hw;
    hal->hw = hw;

    spi_ll_slave_init(hal->hw);




    spi_ll_set_int_stat(hal->hw);
    spi_ll_slave_set_int_type(hal->hw, SPI_LL_INT_TYPE_NORMAL);
}
