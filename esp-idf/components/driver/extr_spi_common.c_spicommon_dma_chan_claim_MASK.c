#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PERIPH_SPI2_DMA_MODULE ; 
 int /*<<< orphan*/  PERIPH_SPI3_DMA_MODULE ; 
 int /*<<< orphan*/  PERIPH_SPI_SHARED_DMA_MODULE ; 
 int SOC_SPI_DMA_CHAN_NUM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int spi_dma_chan_enabled ; 
 int /*<<< orphan*/  spi_dma_spinlock ; 

bool FUNC6 (int dma_chan)
{
    bool ret = false;
    FUNC1(dma_chan >= 1 && dma_chan <= SOC_SPI_DMA_CHAN_NUM);

    FUNC4(&spi_dma_spinlock);
    if ( !(spi_dma_chan_enabled & FUNC0(dma_chan)) ) {
        // get the channel only when it's not claimed yet.
        spi_dma_chan_enabled |= FUNC0(dma_chan);
        ret = true;
    }

#if CONFIG_IDF_TARGET_ESP32
    periph_module_enable(get_dma_periph(dma_chan));
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    if (dma_chan==1) {
        periph_module_enable(PERIPH_SPI2_DMA_MODULE);
    } else if (dma_chan==2) {
        periph_module_enable(PERIPH_SPI3_DMA_MODULE);
    } else if (dma_chan==3) {
        periph_module_enable(PERIPH_SPI_SHARED_DMA_MODULE);
    }
#endif
    FUNC5(&spi_dma_spinlock);

    return ret;
}