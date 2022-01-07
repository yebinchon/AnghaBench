
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t rmt_channel_t ;
typedef int esp_err_t ;
typedef scalar_t__ TickType_t ;
struct TYPE_2__ {int wait_done; int tx_sem; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_TIMEOUT ;
 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int RMT_CHANNEL_ERROR_STR ;
 size_t RMT_CHANNEL_MAX ;
 int RMT_CHECK (int,int ,int ) ;
 int RMT_DRIVER_ERROR_STR ;
 int RMT_TAG ;
 TYPE_1__** p_rmt_obj ;
 scalar_t__ pdTRUE ;
 int xSemaphoreGive (int ) ;
 scalar_t__ xSemaphoreTake (int ,scalar_t__) ;

esp_err_t rmt_wait_tx_done(rmt_channel_t channel, TickType_t wait_time)
{
    RMT_CHECK(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    RMT_CHECK(p_rmt_obj[channel] != ((void*)0), RMT_DRIVER_ERROR_STR, ESP_FAIL);
    if(xSemaphoreTake(p_rmt_obj[channel]->tx_sem, wait_time) == pdTRUE) {
        p_rmt_obj[channel]->wait_done = 0;
        xSemaphoreGive(p_rmt_obj[channel]->tx_sem);
        return ESP_OK;
    }
    else {
        if (wait_time != 0) {
            ESP_LOGE(RMT_TAG, "Timeout on wait_tx_done");
        }
        return ESP_ERR_TIMEOUT;
    }
}
