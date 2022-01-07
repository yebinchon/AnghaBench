
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t gpio_num_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int FUN_PU ;
 int GPIO_CHECK (int ,char*,int ) ;
 int GPIO_IS_VALID_GPIO (size_t) ;
 int * GPIO_PIN_MUX_REG ;
 int REG_CLR_BIT (int ,int ) ;
 scalar_t__ RTC_GPIO_IS_VALID_GPIO (size_t) ;
 int rtc_gpio_pullup_dis (size_t) ;

esp_err_t gpio_pullup_dis(gpio_num_t gpio_num)
{
    GPIO_CHECK(GPIO_IS_VALID_GPIO(gpio_num), "GPIO number error", ESP_ERR_INVALID_ARG);
    return ESP_OK;
}
