
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gpio_num_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {int enable_w1ts; TYPE_1__ enable1_w1ts; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__ GPIO ;
 int GPIO_CHECK (int ,char*,int ) ;
 int GPIO_IS_VALID_OUTPUT_GPIO (int) ;
 int SIG_GPIO_OUT_IDX ;
 int gpio_matrix_out (int,int ,int,int) ;

__attribute__((used)) static esp_err_t gpio_output_enable(gpio_num_t gpio_num)
{
    GPIO_CHECK(GPIO_IS_VALID_OUTPUT_GPIO(gpio_num), "GPIO output gpio_num error", ESP_ERR_INVALID_ARG);
    if (gpio_num < 32) {
        GPIO.enable_w1ts = (0x1 << gpio_num);
    } else {
        GPIO.enable1_w1ts.data = (0x1 << (gpio_num - 32));
    }
    gpio_matrix_out(gpio_num, SIG_GPIO_OUT_IDX, 0, 0);
    return ESP_OK;
}
