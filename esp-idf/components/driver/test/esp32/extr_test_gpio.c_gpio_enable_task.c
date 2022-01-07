
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ESP_OK (int ) ;
 int gpio_intr_enable (int) ;
 int vTaskDelete (int *) ;

void gpio_enable_task(void *param)
{
    int gpio_num = (int)param;
    TEST_ESP_OK(gpio_intr_enable(gpio_num));
    vTaskDelete(((void*)0));
}
