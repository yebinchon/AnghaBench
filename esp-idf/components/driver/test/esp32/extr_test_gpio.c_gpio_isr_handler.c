
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isr_cnt; int gpio_num; } ;
typedef TYPE_1__ gpio_isr_param_t ;


 int ets_printf (char*,int ,int ) ;
 int gpio_get_level (int ) ;

__attribute__((used)) static void gpio_isr_handler(void* arg)
{
    gpio_isr_param_t *param = (gpio_isr_param_t *)arg;
    ets_printf("GPIO[%d] intr, val: %d\n", param->gpio_num, gpio_get_level(param->gpio_num));
    param->isr_cnt++;
}
