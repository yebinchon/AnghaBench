
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GPIO_OUTPUT_IO ;
 int ets_printf (char*,int ,scalar_t__,...) ;
 scalar_t__ gpio_get_level (int ) ;
 int gpio_set_level (int ,int) ;
 int level_intr_times ;

__attribute__((used)) static void gpio_isr_level_handler2(void* arg)
{
    uint32_t gpio_num = (uint32_t) arg;
    level_intr_times++;
    ets_printf("GPIO[%d] intr, val: %d\n", gpio_num, gpio_get_level(gpio_num));
    if(gpio_get_level(gpio_num)) {
        gpio_set_level(GPIO_OUTPUT_IO, 0);
    }else{
        gpio_set_level(GPIO_OUTPUT_IO, 1);
    }
    ets_printf("GPIO[%d] intr, val: %d, level_intr_times = %d\n", GPIO_OUTPUT_IO, gpio_get_level(GPIO_OUTPUT_IO), level_intr_times);
    ets_printf("GPIO[%d] intr, val: %d, level_intr_times = %d\n", gpio_num, gpio_get_level(gpio_num), level_intr_times);
}
