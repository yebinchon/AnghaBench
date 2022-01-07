
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pull_up_en; scalar_t__ pull_down_en; int mode; int pin_bit_mask; int intr_type; int member_0; } ;
typedef TYPE_1__ gpio_config_t ;


 int BIT64 (int ) ;
 int EXAMPLE_BUTTON_GPIO ;
 int GPIO_MODE_INPUT ;
 int GPIO_PIN_INTR_DISABLE ;
 int gpio_config (TYPE_1__*) ;

__attribute__((used)) static void initialise_button(void)
{
    gpio_config_t io_conf = {0};
    io_conf.intr_type = GPIO_PIN_INTR_DISABLE;
    io_conf.pin_bit_mask = BIT64(EXAMPLE_BUTTON_GPIO);
    io_conf.mode = GPIO_MODE_INPUT;
    io_conf.pull_up_en = 1;
    io_conf.pull_down_en = 0;
    gpio_config(&io_conf);
}
