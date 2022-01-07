
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ channel; int sigmadelta_gpio; int sigmadelta_prescale; int sigmadelta_duty; } ;
typedef TYPE_1__ sigmadelta_config_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int GPIO_IS_VALID_OUTPUT_GPIO (int ) ;
 int SIGMADELTA_CHANNEL_ERR_STR ;
 scalar_t__ SIGMADELTA_CHANNEL_MAX ;
 int SIGMADELTA_CHECK (int,int ,int ) ;
 int SIGMADELTA_IO_ERR_STR ;
 int sigmadelta_set_duty (scalar_t__,int ) ;
 int sigmadelta_set_pin (scalar_t__,int ) ;
 int sigmadelta_set_prescale (scalar_t__,int ) ;

esp_err_t sigmadelta_config(const sigmadelta_config_t *config)
{
    SIGMADELTA_CHECK(config->channel < SIGMADELTA_CHANNEL_MAX, SIGMADELTA_CHANNEL_ERR_STR, ESP_ERR_INVALID_ARG);
    SIGMADELTA_CHECK(GPIO_IS_VALID_OUTPUT_GPIO(config->sigmadelta_gpio), SIGMADELTA_IO_ERR_STR, ESP_ERR_INVALID_ARG);
    sigmadelta_set_duty(config->channel, config->sigmadelta_duty);
    sigmadelta_set_prescale(config->channel, config->sigmadelta_prescale);
    sigmadelta_set_pin(config->channel, config->sigmadelta_gpio);
    return ESP_OK;
}
