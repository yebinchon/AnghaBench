
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int TOUCH_PAD_MAX ;
 int portTICK_PERIOD_MS ;
 int printf (char*,...) ;
 int touch_pad_read (int,int*) ;
 int touch_pad_read_filtered (int,int*) ;
 int touch_pad_read_raw_data (int,int*) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void tp_example_read_task(void *pvParameter)
{
    uint16_t touch_value;
    uint16_t touch_filter_value;



    printf("Touch Sensor normal mode read, the output format is: \nTouchpad num:[raw data]\n\n");

    while (1) {
        for (int i = 0; i < TOUCH_PAD_MAX; i++) {






            touch_pad_read(i, &touch_value);
            printf("T%d:[%4d] ", i, touch_value);

        }
        printf("\n");
        vTaskDelay(200 / portTICK_PERIOD_MS);
    }
}
