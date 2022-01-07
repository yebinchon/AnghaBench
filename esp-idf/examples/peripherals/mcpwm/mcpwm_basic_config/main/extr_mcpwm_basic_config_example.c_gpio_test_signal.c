
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pin_bit_mask; int mode; int intr_type; } ;
typedef TYPE_1__ gpio_config_t ;


 int GPIO_INTR_DISABLE ;
 int GPIO_MODE_OUTPUT ;
 int GPIO_NUM_12 ;
 int GPIO_SEL_12 ;
 int gpio_config (TYPE_1__*) ;
 int gpio_set_level (int ,int) ;
 int printf (char*) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void gpio_test_signal(void *arg)
{
    printf("intializing test signal...\n");
    gpio_config_t gp;
    gp.intr_type = GPIO_INTR_DISABLE;
    gp.mode = GPIO_MODE_OUTPUT;
    gp.pin_bit_mask = GPIO_SEL_12;
    gpio_config(&gp);
    while (1) {

        gpio_set_level(GPIO_NUM_12, 1);
        vTaskDelay(10);
        gpio_set_level(GPIO_NUM_12, 0);
        vTaskDelay(10);
    }
}
