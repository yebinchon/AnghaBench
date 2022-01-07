
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sigmadelta_channel_t ;
typedef size_t gpio_num_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int GPIO_IS_VALID_OUTPUT_GPIO (size_t) ;
 int GPIO_MODE_OUTPUT ;
 int * GPIO_PIN_MUX_REG ;
 scalar_t__ GPIO_SD0_OUT_IDX ;
 int PIN_FUNC_GPIO ;
 int PIN_FUNC_SELECT (int ,int ) ;
 int SIGMADELTA_CHANNEL_ERR_STR ;
 scalar_t__ SIGMADELTA_CHANNEL_MAX ;
 int SIGMADELTA_CHECK (int,int ,int ) ;
 int SIGMADELTA_IO_ERR_STR ;
 int gpio_matrix_out (size_t,scalar_t__,int ,int ) ;
 int gpio_set_direction (size_t,int ) ;

esp_err_t sigmadelta_set_pin(sigmadelta_channel_t channel, gpio_num_t gpio_num)
{
    SIGMADELTA_CHECK(channel < SIGMADELTA_CHANNEL_MAX, SIGMADELTA_CHANNEL_ERR_STR, ESP_ERR_INVALID_ARG);
    SIGMADELTA_CHECK(GPIO_IS_VALID_OUTPUT_GPIO(gpio_num), SIGMADELTA_IO_ERR_STR, ESP_ERR_INVALID_ARG);
    PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[gpio_num], PIN_FUNC_GPIO);
    gpio_set_direction(gpio_num, GPIO_MODE_OUTPUT);
    gpio_matrix_out(gpio_num, GPIO_SD0_OUT_IDX + channel, 0, 0);
    return ESP_OK;
}
