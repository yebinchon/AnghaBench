
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_3__* spi_device_handle_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int spics_io_num; } ;
struct TYPE_9__ {TYPE_2__* host; int semphr_polling; int ret_queue; int trans_queue; TYPE_1__ cfg; } ;
struct TYPE_8__ {int cur_cs; int prev_cs; int * device; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 int NO_CS ;
 int SPI_CHECK (int,char*,int ) ;
 TYPE_3__* atomic_load (int *) ;
 int atomic_store (int *,int *) ;
 int free (TYPE_3__*) ;
 int spicommon_cs_free_io (int) ;
 scalar_t__ uxQueueMessagesWaiting (int ) ;
 int vQueueDelete (int ) ;
 int vSemaphoreDelete (int ) ;

esp_err_t spi_bus_remove_device(spi_device_handle_t handle)
{
    int x;
    SPI_CHECK(handle!=((void*)0), "invalid handle", ESP_ERR_INVALID_ARG);


    SPI_CHECK(uxQueueMessagesWaiting(handle->trans_queue)==0, "Have unfinished transactions", ESP_ERR_INVALID_STATE);
    SPI_CHECK(handle->host->cur_cs == NO_CS || atomic_load(&handle->host->device[handle->host->cur_cs])!=handle, "Have unfinished transactions", ESP_ERR_INVALID_STATE);
    SPI_CHECK(uxQueueMessagesWaiting(handle->ret_queue)==0, "Have unfinished transactions", ESP_ERR_INVALID_STATE);


    int spics_io_num = handle->cfg.spics_io_num;
    if (spics_io_num >= 0) spicommon_cs_free_io(spics_io_num);


    vQueueDelete(handle->trans_queue);
    vQueueDelete(handle->ret_queue);
    vSemaphoreDelete(handle->semphr_polling);

    for (x=0; x<NO_CS; x++) {
        if (atomic_load(&handle->host->device[x]) == handle){
            atomic_store(&handle->host->device[x], ((void*)0));
            if (x == handle->host->prev_cs) handle->host->prev_cs = NO_CS;
        }
    }
    free(handle);
    return ESP_OK;
}
