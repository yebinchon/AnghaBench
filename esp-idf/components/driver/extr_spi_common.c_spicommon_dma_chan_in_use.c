
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMA_CHANNEL_ENABLED (int) ;
 int assert (int) ;
 int spi_dma_chan_enabled ;

bool spicommon_dma_chan_in_use(int dma_chan)
{
    assert(dma_chan==1 || dma_chan == 2);
    return spi_dma_chan_enabled & DMA_CHANNEL_ENABLED(dma_chan);
}
