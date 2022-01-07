
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef size_t rmt_channel_t ;
typedef int esp_err_t ;
struct TYPE_4__ {TYPE_1__* tx_lim_ch; } ;
struct TYPE_3__ {int limit; } ;


 int BIT (size_t) ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__ RMT ;
 char* RMT_CHANNEL_ERROR_STR ;
 size_t RMT_CHANNEL_MAX ;
 int RMT_CHECK (int,char*,int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rmt_clr_intr_enable_mask (int ) ;
 int rmt_set_intr_enable_mask (int ) ;
 int rmt_set_tx_wrap_en (int) ;
 int rmt_spinlock ;

esp_err_t rmt_set_tx_thr_intr_en(rmt_channel_t channel, bool en, uint16_t evt_thresh)
{
    RMT_CHECK(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    if(en) {
        RMT_CHECK(evt_thresh <= 256, "RMT EVT THRESH ERR", ESP_ERR_INVALID_ARG);
        portENTER_CRITICAL(&rmt_spinlock);
        RMT.tx_lim_ch[channel].limit = evt_thresh;
        portEXIT_CRITICAL(&rmt_spinlock);
        rmt_set_tx_wrap_en(1);
    }
    return ESP_OK;
}
