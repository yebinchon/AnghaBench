
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use_dma; int mode; int hw; int tx_lsbfirst; int rx_lsbfirst; } ;
typedef TYPE_1__ spi_slave_hal_context_t ;


 int spi_ll_set_rx_lsbfirst (int ,int ) ;
 int spi_ll_set_tx_lsbfirst (int ,int ) ;
 int spi_ll_slave_set_mode (int ,int ,int ) ;

void spi_slave_hal_setup_device(const spi_slave_hal_context_t *hal)
{
    spi_ll_set_rx_lsbfirst(hal->hw, hal->rx_lsbfirst);
    spi_ll_set_tx_lsbfirst(hal->hw, hal->tx_lsbfirst);
    spi_ll_slave_set_mode(hal->hw, hal->mode, hal->use_dma);
}
