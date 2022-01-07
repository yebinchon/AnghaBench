
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGD (int ,char*,int) ;
 int TAG ;
 int init_spi_dev (int,int) ;
 int is_slot_initialized (int) ;
 int is_valid_slot (int) ;

esp_err_t sdspi_host_set_card_clk(int slot, uint32_t freq_khz)
{
    if (!is_valid_slot(slot)) {
        return ESP_ERR_INVALID_ARG;
    }
    if (!is_slot_initialized(slot)) {
        return ESP_ERR_INVALID_STATE;
    }
    ESP_LOGD(TAG, "Setting card clock to %d kHz", freq_khz);
    return init_spi_dev(slot, freq_khz * 1000);
}
