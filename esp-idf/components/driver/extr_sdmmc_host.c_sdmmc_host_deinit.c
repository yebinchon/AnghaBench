
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 int PERIPH_SDMMC_MODULE ;
 int esp_intr_free (int *) ;
 int periph_module_disable (int ) ;
 int * s_event_queue ;
 int * s_intr_handle ;
 int * s_io_intr_event ;
 int sdmmc_host_input_clk_disable () ;
 int sdmmc_host_transaction_handler_deinit () ;
 int vQueueDelete (int *) ;

esp_err_t sdmmc_host_deinit(void)
{
    if (!s_intr_handle) {
        return ESP_ERR_INVALID_STATE;
    }
    esp_intr_free(s_intr_handle);
    s_intr_handle = ((void*)0);
    vQueueDelete(s_event_queue);
    s_event_queue = ((void*)0);
    vQueueDelete(s_io_intr_event);
    s_io_intr_event = ((void*)0);
    sdmmc_host_input_clk_disable();
    sdmmc_host_transaction_handler_deinit();
    periph_module_disable(PERIPH_SDMMC_MODULE);
    return ESP_OK;
}
