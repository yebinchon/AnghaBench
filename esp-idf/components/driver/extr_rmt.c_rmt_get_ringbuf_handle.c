
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t rmt_channel_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int rx_buf; } ;
typedef int RingbufHandle_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 int RMT_ADDR_ERROR_STR ;
 int RMT_CHANNEL_ERROR_STR ;
 size_t RMT_CHANNEL_MAX ;
 int RMT_CHECK (int,int ,int ) ;
 int RMT_DRIVER_ERROR_STR ;
 TYPE_1__** p_rmt_obj ;

esp_err_t rmt_get_ringbuf_handle(rmt_channel_t channel, RingbufHandle_t* buf_handle)
{
    RMT_CHECK(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    RMT_CHECK(p_rmt_obj[channel] != ((void*)0), RMT_DRIVER_ERROR_STR, ESP_FAIL);
    RMT_CHECK(buf_handle != ((void*)0), RMT_ADDR_ERROR_STR, ESP_ERR_INVALID_ARG);
    *buf_handle = p_rmt_obj[channel]->rx_buf;
    return ESP_OK;
}
