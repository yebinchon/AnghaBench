
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;


 int SIGMADELTA_CHANNEL_0 ;
 int portTICK_PERIOD_MS ;
 int sigmadelta_example_init () ;
 int sigmadelta_set_duty (int ,int) ;
 int vTaskDelay (int) ;

void app_main(void)
{
    sigmadelta_example_init();

    int8_t duty = 0;
    int inc = 1;
    while (1) {
        sigmadelta_set_duty(SIGMADELTA_CHANNEL_0, duty);

        vTaskDelay(10 / portTICK_PERIOD_MS);

        duty += inc;
        if (duty == 127 || duty == -127) {
            inc = (-1) * inc;
        }
    }
}
