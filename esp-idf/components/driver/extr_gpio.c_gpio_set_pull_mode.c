
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpio_pull_mode_t ;
typedef int gpio_num_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*,int ,int) ;
 int ESP_OK ;
 int GPIO_CHECK (int,char*,int ) ;

 int GPIO_IS_VALID_GPIO (int ) ;



 int GPIO_TAG ;
 int gpio_pulldown_dis (int ) ;
 int gpio_pulldown_en (int ) ;
 int gpio_pullup_dis (int ) ;
 int gpio_pullup_en (int ) ;

esp_err_t gpio_set_pull_mode(gpio_num_t gpio_num, gpio_pull_mode_t pull)
{
    GPIO_CHECK(GPIO_IS_VALID_GPIO(gpio_num), "GPIO number error", ESP_ERR_INVALID_ARG);
    GPIO_CHECK(pull <= 131, "GPIO pull mode error", ESP_ERR_INVALID_ARG);
    esp_err_t ret = ESP_OK;
    switch (pull) {
    case 129:
        gpio_pulldown_dis(gpio_num);
        gpio_pullup_en(gpio_num);
        break;
    case 130:
        gpio_pulldown_en(gpio_num);
        gpio_pullup_dis(gpio_num);
        break;
    case 128:
        gpio_pulldown_en(gpio_num);
        gpio_pullup_en(gpio_num);
        break;
    case 131:
        gpio_pulldown_dis(gpio_num);
        gpio_pullup_dis(gpio_num);
        break;
    default:
        ESP_LOGE(GPIO_TAG, "Unknown pull up/down mode,gpio_num=%u,pull=%u", gpio_num, pull);
        ret = ESP_ERR_INVALID_ARG;
        break;
    }
    return ret;
}
