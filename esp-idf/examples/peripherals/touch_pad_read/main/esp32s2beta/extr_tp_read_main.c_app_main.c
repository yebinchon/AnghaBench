
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cap_level; int grade; } ;
typedef TYPE_1__ touch_pad_denoise_t ;


 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int TOUCH_BUTTON_NUM ;
 int TOUCH_FSM_MODE_TIMER ;
 int TOUCH_PAD_DENOISE_BIT4 ;
 int TOUCH_PAD_DENOISE_CAP_L7 ;
 int TOUCH_PAD_THRESHOLD_MAX ;
 int * button ;
 int touch_pad_config (int ) ;
 int touch_pad_denoise_enable () ;
 int touch_pad_denoise_set_config (TYPE_1__) ;
 int touch_pad_fsm_start () ;
 int touch_pad_init () ;
 int touch_pad_set_fsm_mode (int ) ;
 int touch_pad_set_thresh (int ,int ) ;
 int tp_example_read_task ;
 int xTaskCreate (int *,char*,int,int *,int,int *) ;

void app_main(void)
{

    touch_pad_init();
    for (int i = 0; i < TOUCH_BUTTON_NUM; i++) {
        touch_pad_config(button[i]);
        touch_pad_set_thresh(button[i], TOUCH_PAD_THRESHOLD_MAX);
    }


    touch_pad_denoise_t denoise = {

            .grade = TOUCH_PAD_DENOISE_BIT4,
            .cap_level = TOUCH_PAD_DENOISE_CAP_L7,
    };
    touch_pad_denoise_set_config(denoise);
    touch_pad_denoise_enable();
    ESP_LOGI(TAG, "Denoise function init");


    touch_pad_set_fsm_mode(TOUCH_FSM_MODE_TIMER);
    touch_pad_fsm_start();


    xTaskCreate(&tp_example_read_task, "touch_pad_read_task", 2048, ((void*)0), 5, ((void*)0));
}
