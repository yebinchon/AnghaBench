
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ESP_LOGI (int ,char*,int ,int,int) ;
 int TAG ;
 int TOUCH_BUTTON_NUM ;
 int * button ;
 int* button_threshold ;
 int touch_pad_read_raw_data (int ,int*) ;
 int touch_pad_set_thresh (int ,int) ;

__attribute__((used)) static void tp_example_set_thresholds(void)
{
    uint32_t touch_value;
    for (int i = 0; i < TOUCH_BUTTON_NUM; i++) {

        touch_pad_read_raw_data(button[i], &touch_value);

        touch_pad_set_thresh(button[i], touch_value * button_threshold[i]);
        ESP_LOGI(TAG, "test init: touch pad [%d] base %d, thresh %d", button[i], touch_value, (uint32_t)(touch_value * button_threshold[i]));

    }
}
