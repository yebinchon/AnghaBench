
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int spi_host_t ;
typedef int spi_host_device_t ;
struct TYPE_11__ {int intr_flags; int flags; int max_transfer_sz; } ;
typedef TYPE_1__ spi_bus_config_t ;
typedef int lldesc_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_13__ {int dma_enabled; int dmadesc_n; TYPE_2__* dmadesc_tx; TYPE_2__* dmadesc_rx; } ;
struct TYPE_12__ {int dma_chan; int max_transfer_sz; int id; int polling; int isr_free; int bus_locked; TYPE_4__ hal; scalar_t__ pm_lock; int acquire_cs; void* prev_cs; void* cur_cs; int intr; int flags; int bus_cfg; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_SUPPORTED ;
 scalar_t__ ESP_ERR_NO_MEM ;
 int ESP_INTR_FLAG_EDGE ;
 int ESP_INTR_FLAG_HIGH ;
 int ESP_INTR_FLAG_INTRDISABLED ;
 int ESP_INTR_FLAG_IRAM ;
 scalar_t__ ESP_OK ;
 int ESP_PM_APB_FREQ_MAX ;
 int LLDESC_MAX_NUM_PER_DESC ;
 int MALLOC_CAP_DMA ;
 void* NO_CS ;
 int SOC_SPI_MAXIMUM_BUFFER_SIZE ;
 int SPICOMMON_BUSFLAG_MASTER ;
 int SPI_CHECK (int,char*,int ) ;
 int SPI_HOST ;
 int VSPI_HOST ;
 int atomic_store (int *,void*) ;
 scalar_t__ esp_intr_alloc (int ,int,int ,void*,int *) ;
 scalar_t__ esp_pm_lock_create (int ,int ,char*,scalar_t__*) ;
 int esp_pm_lock_delete (scalar_t__) ;
 int free (TYPE_2__*) ;
 void* heap_caps_malloc (int,int ) ;
 int lldesc_get_required_num (int ) ;
 TYPE_2__* malloc (int) ;
 int memcpy (int *,TYPE_1__ const*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int spi_hal_deinit (TYPE_4__*) ;
 int spi_hal_init (TYPE_4__*,int) ;
 int spi_intr ;
 scalar_t__ spicommon_bus_initialize_io (int,TYPE_1__ const*,int,int,int *) ;
 int spicommon_dma_chan_claim (int) ;
 int spicommon_dma_chan_free (int) ;
 int spicommon_irqsource_for_host (int) ;
 int spicommon_periph_claim (int,char*) ;
 int spicommon_periph_free (int) ;
 TYPE_2__** spihost ;

esp_err_t spi_bus_initialize(spi_host_device_t host, const spi_bus_config_t *bus_config, int dma_chan)
{
    bool spi_chan_claimed, dma_chan_claimed;
    esp_err_t ret = ESP_OK;
    esp_err_t err;

    SPI_CHECK(host!=SPI_HOST, "SPI1 is not supported", ESP_ERR_NOT_SUPPORTED);

    SPI_CHECK(host>=SPI_HOST && host<=VSPI_HOST, "invalid host", ESP_ERR_INVALID_ARG);





    SPI_CHECK((bus_config->intr_flags & (ESP_INTR_FLAG_HIGH|ESP_INTR_FLAG_EDGE|ESP_INTR_FLAG_INTRDISABLED))==0, "intr flag not allowed", ESP_ERR_INVALID_ARG);

    SPI_CHECK((bus_config->intr_flags & ESP_INTR_FLAG_IRAM)==0, "ESP_INTR_FLAG_IRAM should be disabled when CONFIG_SPI_MASTER_ISR_IN_IRAM is not set.", ESP_ERR_INVALID_ARG);


    spi_chan_claimed=spicommon_periph_claim(host, "spi master");
    SPI_CHECK(spi_chan_claimed, "host already in use", ESP_ERR_INVALID_STATE);

    if ( dma_chan != 0 ) {
        dma_chan_claimed=spicommon_dma_chan_claim(dma_chan);
        if ( !dma_chan_claimed ) {
            spicommon_periph_free( host );
            SPI_CHECK(0, "dma channel already in use", ESP_ERR_INVALID_STATE);
        }
    }

    spihost[host]=malloc(sizeof(spi_host_t));
    if (spihost[host]==((void*)0)) {
        ret = ESP_ERR_NO_MEM;
        goto cleanup;
    }
    memset(spihost[host], 0, sizeof(spi_host_t));
    memcpy( &spihost[host]->bus_cfg, bus_config, sizeof(spi_bus_config_t));
    err = spicommon_bus_initialize_io(host, bus_config, dma_chan, SPICOMMON_BUSFLAG_MASTER|bus_config->flags, &spihost[host]->flags);
    if (err != ESP_OK) {
        ret = err;
        goto cleanup;
    }
    int dma_desc_ct=0;
    spihost[host]->dma_chan=dma_chan;
    if (dma_chan == 0) {
        spihost[host]->max_transfer_sz = SOC_SPI_MAXIMUM_BUFFER_SIZE;
    } else {

        dma_desc_ct=lldesc_get_required_num(bus_config->max_transfer_sz);
        if (dma_desc_ct==0) dma_desc_ct = 1;
        spihost[host]->max_transfer_sz = dma_desc_ct*LLDESC_MAX_NUM_PER_DESC;
    }

    int flags = bus_config->intr_flags | ESP_INTR_FLAG_INTRDISABLED;
    err = esp_intr_alloc(spicommon_irqsource_for_host(host), flags, spi_intr, (void*)spihost[host], &spihost[host]->intr);
    if (err != ESP_OK) {
        ret = err;
        goto cleanup;
    }
    spihost[host]->id = host;

    spihost[host]->cur_cs = NO_CS;
    spihost[host]->prev_cs = NO_CS;
    atomic_store(&spihost[host]->acquire_cs, NO_CS);
    spihost[host]->polling = 0;
    spihost[host]->isr_free = 1;
    spihost[host]->bus_locked = 0;

    spi_hal_init(&spihost[host]->hal, host);
    spihost[host]->hal.dma_enabled = (dma_chan!=0);
    if (dma_desc_ct) {
        spihost[host]->hal.dmadesc_tx=heap_caps_malloc(sizeof(lldesc_t) * dma_desc_ct, MALLOC_CAP_DMA);
        spihost[host]->hal.dmadesc_rx=heap_caps_malloc(sizeof(lldesc_t) * dma_desc_ct, MALLOC_CAP_DMA);
        if (!spihost[host]->hal.dmadesc_tx || !spihost[host]->hal.dmadesc_rx) {
            ret = ESP_ERR_NO_MEM;
            goto cleanup;
        }
    }
    spihost[host]->hal.dmadesc_n = dma_desc_ct;
    return ESP_OK;

cleanup:
    if (spihost[host]) {
        spi_hal_deinit(&spihost[host]->hal);





        free(spihost[host]->hal.dmadesc_rx);
        free(spihost[host]->hal.dmadesc_tx);
    }
    free(spihost[host]);
    spihost[host] = ((void*)0);
    spicommon_periph_free(host);
    if (dma_chan != 0) spicommon_dma_chan_free(dma_chan);
    return ret;
}
