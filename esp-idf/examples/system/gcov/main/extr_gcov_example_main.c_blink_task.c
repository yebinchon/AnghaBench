
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLINK_GPIO ;
 int GPIO_MODE_OUTPUT ;
 int blink_dummy_func () ;
 int esp_gcov_dump () ;
 int gpio_pad_select_gpio (int ) ;
 int gpio_set_direction (int ,int ) ;
 int gpio_set_level (int ,int) ;
 int portTICK_PERIOD_MS ;
 int printf (char*) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void blink_task(void *pvParameter)
{


    int dump_gcov_after = -2;






    gpio_pad_select_gpio(BLINK_GPIO);

    gpio_set_direction(BLINK_GPIO, GPIO_MODE_OUTPUT);

    while(1) {

        gpio_set_level(BLINK_GPIO, 0);
        vTaskDelay(500 / portTICK_PERIOD_MS);

        gpio_set_level(BLINK_GPIO, 1);
        vTaskDelay(500 / portTICK_PERIOD_MS);
        blink_dummy_func();
        if (dump_gcov_after++ < 0) {

            printf("Ready to dump GCOV data...\n");
            esp_gcov_dump();
            printf("GCOV data have been dumped.\n");
        }
    }
}
