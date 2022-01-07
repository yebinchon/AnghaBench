
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpio_num_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {int enable_w1tc; TYPE_1__ enable1_w1tc; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__ GPIO ;
 int GPIO_CHECK (int ,char*,int ) ;
 scalar_t__ GPIO_FUNC0_OUT_SEL_CFG_REG ;
 int GPIO_IS_VALID_GPIO (int) ;
 int REG_WRITE (scalar_t__,int ) ;
 int SIG_GPIO_OUT_IDX ;

__attribute__((used)) static esp_err_t gpio_output_disable(gpio_num_t gpio_num)
{
    GPIO_CHECK(GPIO_IS_VALID_GPIO(gpio_num), "GPIO number error", ESP_ERR_INVALID_ARG);
    if (gpio_num < 32) {
        GPIO.enable_w1tc = (0x1 << gpio_num);
    } else {
        GPIO.enable1_w1tc.data = (0x1 << (gpio_num - 32));
    }


    REG_WRITE(GPIO_FUNC0_OUT_SEL_CFG_REG + (gpio_num * 4),
              SIG_GPIO_OUT_IDX);

    return ESP_OK;
}
