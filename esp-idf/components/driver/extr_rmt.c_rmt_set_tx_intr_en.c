
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rmt_channel_t ;
typedef int esp_err_t ;


 int BIT (int) ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RMT_CHANNEL_ERROR_STR ;
 int RMT_CHANNEL_MAX ;
 int RMT_CHECK (int,int ,int ) ;
 int rmt_clr_intr_enable_mask (int ) ;
 int rmt_set_intr_enable_mask (int ) ;

esp_err_t rmt_set_tx_intr_en(rmt_channel_t channel, bool en)
{
    RMT_CHECK(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    if(en) {
        rmt_set_intr_enable_mask(BIT(channel * 3));
    } else {
        rmt_clr_intr_enable_mask(BIT(channel * 3));
    }
    return ESP_OK;
}
