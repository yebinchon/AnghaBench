
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * status; } ;
typedef TYPE_1__ rmt_channel_status_result_t ;
typedef int esp_err_t ;
typedef int TickType_t ;
struct TYPE_5__ {int * tx_sem; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RMT_CHANNEL_BUSY ;
 int RMT_CHANNEL_IDLE ;
 int RMT_CHANNEL_MAX ;
 int RMT_CHANNEL_UNINIT ;
 int RMT_CHECK (int ,int ,int ) ;
 int RMT_PARAM_ERR_STR ;
 TYPE_3__** p_rmt_obj ;
 scalar_t__ pdTRUE ;
 int xSemaphoreGive (int *) ;
 scalar_t__ xSemaphoreTake (int *,int ) ;

esp_err_t rmt_get_channel_status(rmt_channel_status_result_t *channel_status)
{
    RMT_CHECK(channel_status != ((void*)0), RMT_PARAM_ERR_STR, ESP_ERR_INVALID_ARG);
    for(int i = 0; i < RMT_CHANNEL_MAX; i++) {
        channel_status->status[i]= RMT_CHANNEL_UNINIT;
        if( p_rmt_obj[i] != ((void*)0) ) {
            if( p_rmt_obj[i]->tx_sem != ((void*)0) ) {
                if( xSemaphoreTake(p_rmt_obj[i]->tx_sem, (TickType_t)0) == pdTRUE ) {
                    channel_status->status[i] = RMT_CHANNEL_IDLE;
                    xSemaphoreGive(p_rmt_obj[i]->tx_sem);
                } else {
                    channel_status->status[i] = RMT_CHANNEL_BUSY;
                }
            }
        }
    }
    return ESP_OK;
}
