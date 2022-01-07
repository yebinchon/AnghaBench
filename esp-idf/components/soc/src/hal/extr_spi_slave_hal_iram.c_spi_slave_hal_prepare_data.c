
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bitlen; int * rx_buffer; int hw; int * tx_buffer; int * dmadesc_tx; int * dmadesc_rx; scalar_t__ use_dma; } ;
typedef TYPE_1__ spi_slave_hal_context_t ;


 int lldesc_setup_link (int *,int *,int,int) ;
 int spi_ll_enable_miso (int ,int) ;
 int spi_ll_enable_mosi (int ,int) ;
 int spi_ll_reset_dma (int ) ;
 int spi_ll_rxdma_start (int ,int *) ;
 int spi_ll_slave_reset (int ) ;
 int spi_ll_slave_set_rx_bitlen (int ,int) ;
 int spi_ll_slave_set_tx_bitlen (int ,int) ;
 int spi_ll_txdma_start (int ,int *) ;
 int spi_ll_write_buffer (int ,int *,int) ;

void spi_slave_hal_prepare_data(const spi_slave_hal_context_t *hal)
{
    spi_ll_slave_reset(hal->hw);
    if (hal->use_dma) {
        spi_ll_reset_dma(hal->hw);


        if (hal->rx_buffer) {
            lldesc_setup_link(hal->dmadesc_rx, hal->rx_buffer, ((hal->bitlen + 7) / 8), 1);
            spi_ll_rxdma_start(hal->hw, &hal->dmadesc_rx[0]);
        }
        if (hal->tx_buffer) {
            lldesc_setup_link(hal->dmadesc_tx, hal->tx_buffer, (hal->bitlen + 7) / 8, 0);
            spi_ll_txdma_start(hal->hw, (&hal->dmadesc_tx[0]));
        }
    } else {

        if (hal->tx_buffer) {
            spi_ll_write_buffer(hal->hw, hal->tx_buffer, hal->bitlen);
        }
    }

    spi_ll_slave_set_rx_bitlen(hal->hw, hal->bitlen);
    spi_ll_slave_set_tx_bitlen(hal->hw, hal->bitlen);
    spi_ll_enable_mosi(hal->hw, (hal->tx_buffer == ((void*)0)) ? 0 : 1);
    spi_ll_enable_miso(hal->hw, (hal->rx_buffer == ((void*)0)) ? 0 : 1);
}
