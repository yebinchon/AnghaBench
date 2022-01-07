
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_bitlen; scalar_t__ rcv_buffer; scalar_t__ send_buffer; int half_duplex; int dmadesc_tx; int tx_bitlen; scalar_t__ dma_enabled; int dmadesc_rx; int * hw; } ;
typedef TYPE_1__ spi_hal_context_t ;
typedef int spi_dev_t ;


 int lldesc_setup_link (int ,scalar_t__,int,int) ;
 int spi_ll_enable_miso (int *,int) ;
 int spi_ll_enable_mosi (int *,int) ;
 int spi_ll_reset_dma (int *) ;
 int spi_ll_rxdma_start (int *,int ) ;
 int spi_ll_txdma_start (int *,int ) ;
 int spi_ll_write_buffer (int *,scalar_t__,int ) ;

void spi_hal_prepare_data(const spi_hal_context_t *hal)
{
    spi_dev_t *hw = hal->hw;
    spi_ll_reset_dma(hw);

    if (hal->rcv_buffer) {
        if (!hal->dma_enabled) {

        } else {
            lldesc_setup_link(hal->dmadesc_rx, hal->rcv_buffer, ((hal->rx_bitlen + 7) / 8), 1);
            spi_ll_rxdma_start(hw, hal->dmadesc_rx);
        }
    } else {

        if (hal->dma_enabled) {
            spi_ll_rxdma_start(hw, 0);
        }
    }

    if (hal->send_buffer) {
        if (!hal->dma_enabled) {

            spi_ll_write_buffer(hw, hal->send_buffer, hal->tx_bitlen);
        } else {
            lldesc_setup_link(hal->dmadesc_tx, hal->send_buffer, (hal->tx_bitlen + 7) / 8, 0);
            spi_ll_txdma_start(hw, hal->dmadesc_tx);
        }
    }

    if ((!hal->half_duplex && hal->rcv_buffer) || hal->send_buffer) {
        spi_ll_enable_mosi(hw, 1);
    } else {
        spi_ll_enable_mosi(hw, 0);
    }
    spi_ll_enable_miso(hw, (hal->rcv_buffer) ? 1 : 0);
}
