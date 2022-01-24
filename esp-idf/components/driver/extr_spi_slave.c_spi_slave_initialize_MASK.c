#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spi_slave_transaction_t ;
typedef  int /*<<< orphan*/  spi_slave_t ;
struct TYPE_17__ {int flags; int /*<<< orphan*/  mode; int /*<<< orphan*/  queue_size; int /*<<< orphan*/  spics_io_num; } ;
typedef  TYPE_1__ spi_slave_interface_config_t ;
struct TYPE_18__ {int dmadesc_n; int rx_lsbfirst; int tx_lsbfirst; int use_dma; TYPE_4__* dmadesc_rx; TYPE_4__* dmadesc_tx; int /*<<< orphan*/  mode; } ;
typedef  TYPE_2__ spi_slave_hal_context_t ;
typedef  int spi_host_device_t ;
struct TYPE_19__ {int intr_flags; int flags; int max_transfer_sz; } ;
typedef  TYPE_3__ spi_bus_config_t ;
typedef  int /*<<< orphan*/  lldesc_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_20__ {int id; int dma_chan; int max_transfer_sz; TYPE_2__ hal; scalar_t__ pm_lock; void* ret_queue; void* trans_queue; int /*<<< orphan*/  intr; int /*<<< orphan*/  flags; int /*<<< orphan*/  cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 int ESP_INTR_FLAG_EDGE ; 
 int ESP_INTR_FLAG_HIGH ; 
 int ESP_INTR_FLAG_INTRDISABLED ; 
 int ESP_INTR_FLAG_IRAM ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  ESP_PM_APB_FREQ_MAX ; 
 int /*<<< orphan*/  MALLOC_CAP_DMA ; 
 int SOC_SPI_MAXIMUM_BUFFER_SIZE ; 
 int SPICOMMON_BUSFLAG_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int SPI_MAX_DMA_LEN ; 
 int SPI_SLAVE_RXBIT_LSBFIRST ; 
 int SPI_SLAVE_TXBIT_LSBFIRST ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 void* FUNC10 (int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  spi_intr ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 (int,TYPE_3__ const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int FUNC22 (int,char*) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 TYPE_4__** spihost ; 
 int /*<<< orphan*/  FUNC24 (void*) ; 
 void* FUNC25 (int /*<<< orphan*/ ,int) ; 

esp_err_t FUNC26(spi_host_device_t host, const spi_bus_config_t *bus_config, const spi_slave_interface_config_t *slave_config, int dma_chan)
{
    bool spi_chan_claimed, dma_chan_claimed;
    esp_err_t ret = ESP_OK;
    esp_err_t err;
    //We only support HSPI/VSPI, period.
    FUNC0(FUNC1(host), "invalid host", ESP_ERR_INVALID_ARG);
#if defined(CONFIG_IDF_TARGET_ESP32)
    SPI_CHECK( dma_chan >= 0 && dma_chan <= 2, "invalid dma channel", ESP_ERR_INVALID_ARG );
#elif defined(CONFIG_IDF_TARGET_ESP32S2BETA)
    SPI_CHECK( dma_chan == 0 || dma_chan == host, "invalid dma channel", ESP_ERR_INVALID_ARG );
#endif
    FUNC0((bus_config->intr_flags & (ESP_INTR_FLAG_HIGH|ESP_INTR_FLAG_EDGE|ESP_INTR_FLAG_INTRDISABLED))==0, "intr flag not allowed", ESP_ERR_INVALID_ARG);
#ifndef CONFIG_SPI_SLAVE_ISR_IN_IRAM
    FUNC0((bus_config->intr_flags & ESP_INTR_FLAG_IRAM)==0, "ESP_INTR_FLAG_IRAM should be disabled when CONFIG_SPI_SLAVE_ISR_IN_IRAM is not set.", ESP_ERR_INVALID_ARG);
#endif

    spi_chan_claimed=FUNC22(host, "spi slave");
    FUNC0(spi_chan_claimed, "host already in use", ESP_ERR_INVALID_STATE);

    bool use_dma = dma_chan != 0;
    if (use_dma) {
        dma_chan_claimed=FUNC19(dma_chan);
        if ( !dma_chan_claimed ) {
            FUNC23( host );
            FUNC0(dma_chan_claimed, "dma channel already in use", ESP_ERR_INVALID_STATE);
        }
    }

    spihost[host] = FUNC11(sizeof(spi_slave_t));
    if (spihost[host] == NULL) {
        ret = ESP_ERR_NO_MEM;
        goto cleanup;
    }
    FUNC13(spihost[host], 0, sizeof(spi_slave_t));
    FUNC12(&spihost[host]->cfg, slave_config, sizeof(spi_slave_interface_config_t));
    spihost[host]->id = host;

    err = FUNC17(host, bus_config, dma_chan, SPICOMMON_BUSFLAG_SLAVE|bus_config->flags, &spihost[host]->flags);
    if (err!=ESP_OK) {
        ret = err;
        goto cleanup;
    }
    FUNC18(host, slave_config->spics_io_num, 0, !FUNC2(spihost[host]));
    // The slave DMA suffers from unexpected transactions. Forbid reading if DMA is enabled by disabling the CS line.
    if (use_dma) FUNC9(spihost[host]);

    int dma_desc_ct = 0;
    spihost[host]->dma_chan = dma_chan;
    if (use_dma) {
        //See how many dma descriptors we need and allocate them
        dma_desc_ct = (bus_config->max_transfer_sz + SPI_MAX_DMA_LEN - 1) / SPI_MAX_DMA_LEN;
        if (dma_desc_ct == 0) dma_desc_ct = 1; //default to 4k when max is not given
        spihost[host]->max_transfer_sz = dma_desc_ct * SPI_MAX_DMA_LEN;
    } else {
        //We're limited to non-DMA transfers: the SPI work registers can hold 64 bytes at most.
        spihost[host]->max_transfer_sz = SOC_SPI_MAXIMUM_BUFFER_SIZE;
    }
#ifdef CONFIG_PM_ENABLE
    err = esp_pm_lock_create(ESP_PM_APB_FREQ_MAX, 0, "spi_slave",
            &spihost[host]->pm_lock);
    if (err != ESP_OK) {
        ret = err;
        goto cleanup;
    }
    // Lock APB frequency while SPI slave driver is in use
    esp_pm_lock_acquire(spihost[host]->pm_lock);
#endif //CONFIG_PM_ENABLE

    //Create queues
    spihost[host]->trans_queue = FUNC25(slave_config->queue_size, sizeof(spi_slave_transaction_t *));
    spihost[host]->ret_queue = FUNC25(slave_config->queue_size, sizeof(spi_slave_transaction_t *));
    if (!spihost[host]->trans_queue || !spihost[host]->ret_queue) {
        ret = ESP_ERR_NO_MEM;
        goto cleanup;
    }

    int flags = bus_config->intr_flags | ESP_INTR_FLAG_INTRDISABLED;
    err = FUNC3(FUNC21(host), flags, spi_intr, (void *)spihost[host], &spihost[host]->intr);
    if (err != ESP_OK) {
        ret = err;
        goto cleanup;
    }

    spi_slave_hal_context_t *hal = &spihost[host]->hal;
    FUNC15(hal, host);

    if (dma_desc_ct) {
        hal->dmadesc_tx = FUNC10(sizeof(lldesc_t) * dma_desc_ct, MALLOC_CAP_DMA);
        hal->dmadesc_rx = FUNC10(sizeof(lldesc_t) * dma_desc_ct, MALLOC_CAP_DMA);
        if (!hal->dmadesc_tx || !hal->dmadesc_rx) {
            ret = ESP_ERR_NO_MEM;
            goto cleanup;
        }
    }
    hal->dmadesc_n = dma_desc_ct;
    hal->rx_lsbfirst = (slave_config->flags & SPI_SLAVE_RXBIT_LSBFIRST) ? 1 : 0;
    hal->tx_lsbfirst = (slave_config->flags & SPI_SLAVE_TXBIT_LSBFIRST) ? 1 : 0;
    hal->mode = slave_config->mode;
    hal->use_dma = use_dma;

    FUNC16(hal);

    return ESP_OK;

cleanup:
    if (spihost[host]) {
        if (spihost[host]->trans_queue) FUNC24(spihost[host]->trans_queue);
        if (spihost[host]->ret_queue) FUNC24(spihost[host]->ret_queue);
        FUNC8(spihost[host]->hal.dmadesc_tx);
        FUNC8(spihost[host]->hal.dmadesc_rx);
#ifdef CONFIG_PM_ENABLE
        if (spihost[host]->pm_lock) {
            esp_pm_lock_release(spihost[host]->pm_lock);
            esp_pm_lock_delete(spihost[host]->pm_lock);
        }
#endif
    }
    FUNC14(&spihost[host]->hal);
    FUNC8(spihost[host]);
    spihost[host] = NULL;
    FUNC23(host);
    FUNC20(dma_chan);
    return ret;
}