
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int disable_intr_times ;
 int ets_printf (char*,int ,int ,int ) ;
 int gpio_get_level (int ) ;
 int gpio_intr_disable (int ) ;

__attribute__((used)) static void gpio_isr_level_handler(void* arg)
{
    uint32_t gpio_num = (uint32_t) arg;
    disable_intr_times++;
    ets_printf("GPIO[%d] intr, val: %d, disable_intr_times = %d\n", gpio_num, gpio_get_level(gpio_num), disable_intr_times);
    gpio_intr_disable(gpio_num);
}
