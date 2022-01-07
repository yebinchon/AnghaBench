
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pin_bit_mask; int pull_up_en; int pull_down_en; int intr_type; int mode; } ;
typedef TYPE_1__ gpio_config_t ;


 int BIT (int ) ;
 int GPIO_B1 ;
 int GPIO_B2 ;
 int GPIO_B3 ;
 int GPIO_INTR_DISABLE ;
 int GPIO_MODE_DEF_OUTPUT ;
 int SLAVE_PWR_GPIO ;
 int gpio_config (TYPE_1__*) ;
 int gpio_set_level (int ,int) ;
 int vTaskDelay (int) ;

void slave_power_on(void)
{
}
