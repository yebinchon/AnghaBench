
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int spi_slave_transaction_t ;
typedef int spi_slave_t ;
struct TYPE_17__ {int flags; int mode; int queue_size; int spics_io_num; } ;
typedef TYPE_1__ spi_slave_interface_config_t ;
struct TYPE_18__ {int dmadesc_n; int rx_lsbfirst; int tx_lsbfirst; int use_dma; TYPE_4__* dmadesc_rx; TYPE_4__* dmadesc_tx; int mode; } ;
typedef TYPE_2__ spi_slave_hal_context_t ;
typedef int spi_host_device_t ;
struct TYPE_19__ {int intr_flags; int flags; int max_transfer_sz; } ;
typedef TYPE_3__ spi_bus_config_t ;
typedef int lldesc_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_20__ {int id; int dma_chan; int max_transfer_sz; TYPE_2__ hal; scalar_t__ pm_lock; void* ret_queue; void* trans_queue; int intr; int flags; int cfg; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_ERR_NO_MEM ;
 int ESP_INTR_FLAG_EDGE ;
 int ESP_INTR_FLAG_HIGH ;
 int ESP_INTR_FLAG_INTRDISABLED ;
 int ESP_INTR_FLAG_IRAM ;
 scalar_t__ ESP_OK ;
 int ESP_PM_APB_FREQ_MAX ;
 int MALLOC_CAP_DMA ;
 int SOC_SPI_MAXIMUM_BUFFER_SIZE ;
 int SPICOMMON_BUSFLAG_SLAVE ;
 int SPI_CHECK (int,char*,int ) ;
 int SPI_MAX_DMA_LEN ;
 int SPI_SLAVE_RXBIT_LSBFIRST ;
 int SPI_SLAVE_TXBIT_LSBFIRST ;
 int VALID_HOST (int) ;
 int bus_is_iomux (TYPE_4__*) ;
 scalar_t__ esp_intr_alloc (int ,int,int ,void*,int *) ;
 int esp_pm_lock_acquire (scalar_t__) ;
 scalar_t__ esp_pm_lock_create (int ,int ,char*,scalar_t__*) ;
 int esp_pm_lock_delete (scalar_t__) ;
 int esp_pm_lock_release (scalar_t__) ;
 int free (TYPE_4__*) ;
 int freeze_cs (TYPE_4__*) ;
 void* heap_caps_malloc (int,int ) ;
 TYPE_4__* malloc (int) ;
 int memcpy (int *,TYPE_1__ const*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int spi_intr ;
 int spi_slave_hal_deinit (TYPE_2__*) ;
 int spi_slave_hal_init (TYPE_2__*,int) ;
 int spi_slave_hal_setup_device (TYPE_2__*) ;
 scalar_t__ spicommon_bus_initialize_io (int,TYPE_3__ const*,int,int,int *) ;
 int spicommon_cs_initialize (int,int ,int ,int) ;
 int spicommon_dma_chan_claim (int) ;
 int spicommon_dma_chan_free (int) ;
 int spicommon_irqsource_for_host (int) ;
 int spicommon_periph_claim (int,char*) ;
 int spicommon_periph_free (int) ;
 TYPE_4__** spihost ;
 int vQueueDelete (void*) ;
 void* xQueueCreate (int ,int) ;

esp_err_t spi_slave_initialize(spi_host_device_t host, const spi_bus_config_t *bus_config, const spi_slave_interface_config_t *slave_config, int dma_chan)
{
    bool spi_chan_claimed, dma_chan_claimed;
    esp_err_t ret = ESP_OK;
    esp_err_t err;

    SPI_CHECK(VALID_HOST(host), "invalid host", ESP_ERR_INVALID_ARG);





    SPI_CHECK((bus_config->intr_flags & (ESP_INTR_FLAG_HIGH|ESP_INTR_FLAG_EDGE|ESP_INTR_FLAG_INTRDISABLED))==0, "intr flag not allowed", ESP_ERR_INVALID_ARG);

    SPI_CHECK((bus_config->intr_flags & ESP_INTR_FLAG_IRAM)==0, "ESP_INTR_FLAG_IRAM should be disabled when CONFIG_SPI_SLAVE_ISR_IN_IRAM is not set.", ESP_ERR_INVALID_ARG);


    spi_chan_claimed=spicommon_periph_claim(host, "spi slave");
    SPI_CHECK(spi_chan_claimed, "host already in use", ESP_ERR_INVALID_STATE);

    bool use_dma = dma_chan != 0;
    if (use_dma) {
        dma_chan_claimed=spicommon_dma_chan_claim(dma_chan);
        if ( !dma_chan_claimed ) {
            spicommon_periph_free( host );
            SPI_CHECK(dma_chan_claimed, "dma channel already in use", ESP_ERR_INVALID_STATE);
        }
    }

    spihost[host] = malloc(sizeof(spi_slave_t));
    if (spihost[host] == ((void*)0)) {
        ret = ESP_ERR_NO_MEM;
        goto cleanup;
    }
    memset(spihost[host], 0, sizeof(spi_slave_t));
    memcpy(&spihost[host]->cfg, slave_config, sizeof(spi_slave_interface_config_t));
    spihost[host]->id = host;

    err = spicommon_bus_initialize_io(host, bus_config, dma_chan, SPICOMMON_BUSFLAG_SLAVE|bus_config->flags, &spihost[host]->flags);
    if (err!=ESP_OK) {
        ret = err;
        goto cleanup;
    }
    spicommon_cs_initialize(host, slave_config->spics_io_num, 0, !bus_is_iomux(spihost[host]));

    if (use_dma) freeze_cs(spihost[host]);

    int dma_desc_ct = 0;
    spihost[host]->dma_chan = dma_chan;
    if (use_dma) {

        dma_desc_ct = (bus_config->max_transfer_sz + SPI_MAX_DMA_LEN - 1) / SPI_MAX_DMA_LEN;
        if (dma_desc_ct == 0) dma_desc_ct = 1;
        spihost[host]->max_transfer_sz = dma_desc_ct * SPI_MAX_DMA_LEN;
    } else {

        spihost[host]->max_transfer_sz = SOC_SPI_MAXIMUM_BUFFER_SIZE;
    }
    spihost[host]->trans_queue = xQueueCreate(slave_config->queue_size, sizeof(spi_slave_transaction_t *));
    spihost[host]->ret_queue = xQueueCreate(slave_config->queue_size, sizeof(spi_slave_transaction_t *));
    if (!spihost[host]->trans_queue || !spihost[host]->ret_queue) {
        ret = ESP_ERR_NO_MEM;
        goto cleanup;
    }

    int flags = bus_config->intr_flags | ESP_INTR_FLAG_INTRDISABLED;
    err = esp_intr_alloc(spicommon_irqsource_for_host(host), flags, spi_intr, (void *)spihost[host], &spihost[host]->intr);
    if (err != ESP_OK) {
        ret = err;
        goto cleanup;
    }

    spi_slave_hal_context_t *hal = &spihost[host]->hal;
    spi_slave_hal_init(hal, host);

    if (dma_desc_ct) {
        hal->dmadesc_tx = heap_caps_malloc(sizeof(lldesc_t) * dma_desc_ct, MALLOC_CAP_DMA);
        hal->dmadesc_rx = heap_caps_malloc(sizeof(lldesc_t) * dma_desc_ct, MALLOC_CAP_DMA);
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

    spi_slave_hal_setup_device(hal);

    return ESP_OK;

cleanup:
    if (spihost[host]) {
        if (spihost[host]->trans_queue) vQueueDelete(spihost[host]->trans_queue);
        if (spihost[host]->ret_queue) vQueueDelete(spihost[host]->ret_queue);
        free(spihost[host]->hal.dmadesc_tx);
        free(spihost[host]->hal.dmadesc_rx);






    }
    spi_slave_hal_deinit(&spihost[host]->hal);
    free(spihost[host]);
    spihost[host] = ((void*)0);
    spicommon_periph_free(host);
    spicommon_dma_chan_free(dma_chan);
    return ret;
}
