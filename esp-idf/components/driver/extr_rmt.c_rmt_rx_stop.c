
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t rmt_channel_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_2__* conf_ch; } ;
struct TYPE_4__ {scalar_t__ rx_en; } ;
struct TYPE_5__ {TYPE_1__ conf1; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_3__ RMT ;
 int RMT_CHANNEL_ERROR_STR ;
 size_t RMT_CHANNEL_MAX ;
 int RMT_CHECK (int,int ,int ) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rmt_spinlock ;

esp_err_t rmt_rx_stop(rmt_channel_t channel)
{
    RMT_CHECK(channel < RMT_CHANNEL_MAX, RMT_CHANNEL_ERROR_STR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL(&rmt_spinlock);
    RMT.conf_ch[channel].conf1.rx_en = 0;
    portEXIT_CRITICAL(&rmt_spinlock);
    return ESP_OK;
}
