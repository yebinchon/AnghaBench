
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int TOUCH_BUTTON_NUM ;
 int* button ;
 int portTICK_PERIOD_MS ;
 int portTICK_RATE_MS ;
 int printf (char*,...) ;
 int touch_pad_read_raw_data (int,int*) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void tp_example_read_task(void *pvParameter)
{
    uint32_t touch_value;


    vTaskDelay(100 / portTICK_RATE_MS);
    printf("Touch Sensor read, the output format is: \nTouchpad num:[raw data]\n\n");

    while (1) {
        for (int i = 0; i < TOUCH_BUTTON_NUM; i++) {
            touch_pad_read_raw_data(button[i], &touch_value);
            printf("T%d: [%4d] ", button[i], touch_value);
        }
        printf("\n");
        vTaskDelay(200 / portTICK_PERIOD_MS);
    }
}
