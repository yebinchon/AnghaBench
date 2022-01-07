
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t spi_host_device_t ;
typedef int esp_err_t ;
struct TYPE_5__ {TYPE_1__* dmadesc_tx; TYPE_1__* dmadesc_rx; } ;
struct TYPE_4__ {scalar_t__ dma_chan; int intr; TYPE_2__ hal; int pm_lock; int bus_cfg; int * device; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 int NO_CS ;
 int SPI_CHECK (int,char*,int ) ;
 size_t SPI_HOST ;
 size_t VSPI_HOST ;
 int * atomic_load (int *) ;
 int esp_intr_free (int ) ;
 int esp_pm_lock_delete (int ) ;
 int free (TYPE_1__*) ;
 int spi_hal_deinit (TYPE_2__*) ;
 int spicommon_bus_free_io_cfg (int *) ;
 int spicommon_dma_chan_free (scalar_t__) ;
 int spicommon_periph_free (size_t) ;
 TYPE_1__** spihost ;

esp_err_t spi_bus_free(spi_host_device_t host)
{
    int x;
    SPI_CHECK(host>=SPI_HOST && host<=VSPI_HOST, "invalid host", ESP_ERR_INVALID_ARG);
    SPI_CHECK(spihost[host]!=((void*)0), "host not in use", ESP_ERR_INVALID_STATE);
    for (x=0; x<NO_CS; x++) {
        SPI_CHECK(atomic_load(&spihost[host]->device[x])==((void*)0), "not all CSses freed", ESP_ERR_INVALID_STATE);
    }
    spicommon_bus_free_io_cfg(&spihost[host]->bus_cfg);

    if ( spihost[host]->dma_chan > 0 ) {
        spicommon_dma_chan_free ( spihost[host]->dma_chan );
    }



    spi_hal_deinit(&spihost[host]->hal);
    free(spihost[host]->hal.dmadesc_rx);
    free(spihost[host]->hal.dmadesc_tx);

    esp_intr_free(spihost[host]->intr);
    spicommon_periph_free(host);
    free(spihost[host]);
    spihost[host]=((void*)0);
    return ESP_OK;
}
