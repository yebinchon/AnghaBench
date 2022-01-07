
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,int,int) ;
 int TAG ;
 int TOUCH_PAD_MAX ;
 int* s_pad_init_val ;
 int touch_pad_read_filtered (int,int*) ;
 int touch_pad_set_thresh (int,int) ;

__attribute__((used)) static void tp_example_set_thresholds(void)
{
    uint16_t touch_value;
    for (int i = 0; i < TOUCH_PAD_MAX; i++) {

        touch_pad_read_filtered(i, &touch_value);
        s_pad_init_val[i] = touch_value;
        ESP_LOGI(TAG, "test init: touch pad [%d] val is %d", i, touch_value);

        ESP_ERROR_CHECK(touch_pad_set_thresh(i, touch_value * 2 / 3));

    }
}
