
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t spi_host_device_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_2__* dmadesc_rx; TYPE_2__* dmadesc_tx; } ;
struct TYPE_7__ {scalar_t__ dma_chan; int pm_lock; int intr; TYPE_1__ hal; scalar_t__ ret_queue; scalar_t__ trans_queue; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int SPI_CHECK (TYPE_2__*,char*,int ) ;
 TYPE_2__* VALID_HOST (size_t) ;
 int esp_intr_free (int ) ;
 int esp_pm_lock_delete (int ) ;
 int esp_pm_lock_release (int ) ;
 int free (TYPE_2__*) ;
 int spicommon_dma_chan_free (scalar_t__) ;
 int spicommon_periph_free (size_t) ;
 TYPE_2__** spihost ;
 int vQueueDelete (scalar_t__) ;

esp_err_t spi_slave_free(spi_host_device_t host)
{
    SPI_CHECK(VALID_HOST(host), "invalid host", ESP_ERR_INVALID_ARG);
    SPI_CHECK(spihost[host], "host not slave", ESP_ERR_INVALID_ARG);
    if (spihost[host]->trans_queue) vQueueDelete(spihost[host]->trans_queue);
    if (spihost[host]->ret_queue) vQueueDelete(spihost[host]->ret_queue);
    if ( spihost[host]->dma_chan > 0 ) {
        spicommon_dma_chan_free ( spihost[host]->dma_chan );
    }
    free(spihost[host]->hal.dmadesc_tx);
    free(spihost[host]->hal.dmadesc_rx);
    esp_intr_free(spihost[host]->intr);




    free(spihost[host]);
    spihost[host] = ((void*)0);
    spicommon_periph_free(host);
    return ESP_OK;
}
