
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int TOUCHPAD_FILTER_TOUCH_PERIOD ;
 int TOUCH_FSM_MODE_TIMER ;
 int TOUCH_HVOLT_2V7 ;
 int TOUCH_HVOLT_ATTEN_1V ;
 int TOUCH_LVOLT_0V5 ;
 int touch_pad_filter_start (int ) ;
 int touch_pad_init () ;
 int touch_pad_isr_register (int ,int *) ;
 int touch_pad_set_fsm_mode (int ) ;
 int touch_pad_set_voltage (int ,int ,int ) ;
 int tp_example_read_task ;
 int tp_example_rtc_intr ;
 int tp_example_set_thresholds () ;
 int tp_example_touch_pad_init () ;
 int xTaskCreate (int *,char*,int,int *,int,int *) ;

void app_main(void)
{

    ESP_LOGI(TAG, "Initializing touch pad");
    touch_pad_init();

    touch_pad_set_fsm_mode(TOUCH_FSM_MODE_TIMER);



    touch_pad_set_voltage(TOUCH_HVOLT_2V7, TOUCH_LVOLT_0V5, TOUCH_HVOLT_ATTEN_1V);

    tp_example_touch_pad_init();

    touch_pad_filter_start(TOUCHPAD_FILTER_TOUCH_PERIOD);

    tp_example_set_thresholds();

    touch_pad_isr_register(tp_example_rtc_intr, ((void*)0));

    xTaskCreate(&tp_example_read_task, "touch_pad_read_task", 2048, ((void*)0), 5, ((void*)0));
}
