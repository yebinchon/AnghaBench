
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int previous; int pin; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int GPIO_MODE_OUTPUT ;
 int LED_OFF ;
 int gpio_pad_select_gpio (int ) ;
 int gpio_set_direction (int ,int ) ;
 int gpio_set_level (int ,int ) ;
 TYPE_1__* led_state ;

__attribute__((used)) static void board_led_init(void)
{
    for (int i = 0; i < ARRAY_SIZE(led_state); i++) {
        gpio_pad_select_gpio(led_state[i].pin);
        gpio_set_direction(led_state[i].pin, GPIO_MODE_OUTPUT);
        gpio_set_level(led_state[i].pin, LED_OFF);
        led_state[i].previous = LED_OFF;
    }
}
