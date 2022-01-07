
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLINK_GPIO ;
 int GPIO_MODE_OUTPUT ;
 int gpio_pad_select_gpio (int ) ;
 int gpio_set_direction (int ,int ) ;
 int gpio_set_level (int ,int) ;
 int portTICK_PERIOD_MS ;
 int printf (char*) ;
 int vTaskDelay (int) ;

void app_main(void)
{






    gpio_pad_select_gpio(BLINK_GPIO);

    gpio_set_direction(BLINK_GPIO, GPIO_MODE_OUTPUT);
    while(1) {

 printf("Turning off the LED\n");
        gpio_set_level(BLINK_GPIO, 0);
        vTaskDelay(1000 / portTICK_PERIOD_MS);

 printf("Turning on the LED\n");
        gpio_set_level(BLINK_GPIO, 1);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}
