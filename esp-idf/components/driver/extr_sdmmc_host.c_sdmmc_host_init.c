
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sdmmc_event_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_9__ {scalar_t__ busy_clr_int_en; } ;
struct TYPE_8__ {int int_enable; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_6__ {int val; } ;
struct TYPE_10__ {TYPE_4__ cardthrctl; TYPE_3__ ctrl; TYPE_2__ intmask; TYPE_1__ rintsts; int hcon; int verid; } ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_ERR_NO_MEM ;
 int ESP_LOGD (int ,char*,int ,int ) ;
 scalar_t__ ESP_OK ;
 int ETS_SDIO_HOST_INTR_SOURCE ;
 int PERIPH_SDMMC_MODULE ;
 TYPE_5__ SDMMC ;
 int SDMMC_EVENT_QUEUE_LENGTH ;
 int SDMMC_INTMASK_CD ;
 int SDMMC_INTMASK_CMD_DONE ;
 int SDMMC_INTMASK_DATA_OVER ;
 int SDMMC_INTMASK_DCRC ;
 int SDMMC_INTMASK_DTO ;
 int SDMMC_INTMASK_EBE ;
 int SDMMC_INTMASK_HLE ;
 int SDMMC_INTMASK_HTO ;
 int SDMMC_INTMASK_RCRC ;
 int SDMMC_INTMASK_RESP_ERR ;
 int SDMMC_INTMASK_RTO ;
 int SDMMC_INTMASK_SBE ;
 int TAG ;
 scalar_t__ esp_intr_alloc (int ,int ,int *,int *,int **) ;
 int esp_intr_free (int *) ;
 int periph_module_enable (int ) ;
 int periph_module_reset (int ) ;
 int * s_event_queue ;
 int * s_intr_handle ;
 int * s_io_intr_event ;
 int sdmmc_host_dma_init () ;
 int sdmmc_host_reset () ;
 int sdmmc_host_set_clk_div (int) ;
 scalar_t__ sdmmc_host_transaction_handler_init () ;
 int sdmmc_isr ;
 int vQueueDelete (int *) ;
 int vSemaphoreDelete (int *) ;
 int * xQueueCreate (int ,int) ;
 int * xSemaphoreCreateBinary () ;

esp_err_t sdmmc_host_init(void)
{
    if (s_intr_handle) {
        return ESP_ERR_INVALID_STATE;
    }

    periph_module_reset(PERIPH_SDMMC_MODULE);
    periph_module_enable(PERIPH_SDMMC_MODULE);


    sdmmc_host_set_clk_div(2);


    sdmmc_host_reset();
    ESP_LOGD(TAG, "peripheral version %x, hardware config %08x", SDMMC.verid, SDMMC.hcon);


    SDMMC.rintsts.val = 0xffffffff;
    SDMMC.intmask.val = 0;
    SDMMC.ctrl.int_enable = 0;


    s_event_queue = xQueueCreate(SDMMC_EVENT_QUEUE_LENGTH, sizeof(sdmmc_event_t));
    if (!s_event_queue) {
        return ESP_ERR_NO_MEM;
    }
    s_io_intr_event = xSemaphoreCreateBinary();
    if (!s_io_intr_event) {
        vQueueDelete(s_event_queue);
        s_event_queue = ((void*)0);
        return ESP_ERR_NO_MEM;
    }

    esp_err_t ret = esp_intr_alloc(ETS_SDIO_HOST_INTR_SOURCE, 0, &sdmmc_isr, s_event_queue, &s_intr_handle);
    if (ret != ESP_OK) {
        vQueueDelete(s_event_queue);
        s_event_queue = ((void*)0);
        vSemaphoreDelete(s_io_intr_event);
        s_io_intr_event = ((void*)0);
        return ret;
    }

    SDMMC.intmask.val =
            SDMMC_INTMASK_CD |
            SDMMC_INTMASK_CMD_DONE |
            SDMMC_INTMASK_DATA_OVER |
            SDMMC_INTMASK_RCRC | SDMMC_INTMASK_DCRC |
            SDMMC_INTMASK_RTO | SDMMC_INTMASK_DTO | SDMMC_INTMASK_HTO |
            SDMMC_INTMASK_SBE | SDMMC_INTMASK_EBE |
            SDMMC_INTMASK_RESP_ERR | SDMMC_INTMASK_HLE;
    SDMMC.ctrl.int_enable = 1;


    SDMMC.cardthrctl.busy_clr_int_en = 0;


    sdmmc_host_dma_init();


    ret = sdmmc_host_transaction_handler_init();
    if (ret != ESP_OK) {
        vQueueDelete(s_event_queue);
        s_event_queue = ((void*)0);
        vSemaphoreDelete(s_io_intr_event);
        s_io_intr_event = ((void*)0);
        esp_intr_free(s_intr_handle);
        s_intr_handle = ((void*)0);
        return ret;
    }

    return ESP_OK;
}
