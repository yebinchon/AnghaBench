
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMA_CHANNEL_ENABLED (int) ;
 int PERIPH_SPI2_DMA_MODULE ;
 int PERIPH_SPI3_DMA_MODULE ;
 int PERIPH_SPI_SHARED_DMA_MODULE ;
 int SOC_SPI_DMA_CHAN_NUM ;
 int assert (int) ;
 int get_dma_periph (int) ;
 int periph_module_enable (int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int spi_dma_chan_enabled ;
 int spi_dma_spinlock ;

bool spicommon_dma_chan_claim (int dma_chan)
{
    bool ret = 0;
    assert(dma_chan >= 1 && dma_chan <= SOC_SPI_DMA_CHAN_NUM);

    portENTER_CRITICAL(&spi_dma_spinlock);
    if ( !(spi_dma_chan_enabled & DMA_CHANNEL_ENABLED(dma_chan)) ) {

        spi_dma_chan_enabled |= DMA_CHANNEL_ENABLED(dma_chan);
        ret = 1;
    }
    portEXIT_CRITICAL(&spi_dma_spinlock);

    return ret;
}
