
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t sigmadelta_channel_t ;
typedef int int8_t ;
typedef int esp_err_t ;
struct TYPE_4__ {TYPE_1__* channel; } ;
struct TYPE_3__ {int duty; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__ SIGMADELTA ;
 int SIGMADELTA_CHANNEL_ERR_STR ;
 size_t SIGMADELTA_CHANNEL_MAX ;
 int SIGMADELTA_CHECK (int,int ,int ) ;

esp_err_t sigmadelta_set_duty(sigmadelta_channel_t channel, int8_t duty)
{
    SIGMADELTA_CHECK(channel < SIGMADELTA_CHANNEL_MAX, SIGMADELTA_CHANNEL_ERR_STR, ESP_ERR_INVALID_ARG);
    SIGMADELTA.channel[channel].duty = duty;
    return ESP_OK;
}
