
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int shield_driver; int guard_ring_pad; } ;
typedef TYPE_1__ touch_pad_waterproof_t ;
struct TYPE_6__ {int cap_level; int grade; } ;
typedef TYPE_2__ touch_pad_denoise_t ;
typedef int touch_event_t ;


 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int TOUCH_BUTTON_NUM ;
 int TOUCH_FSM_MODE_TIMER ;
 int TOUCH_PAD_DENOISE_BIT4 ;
 int TOUCH_PAD_DENOISE_CAP_L7 ;
 int TOUCH_PAD_FILTER_IIR_8 ;
 int TOUCH_PAD_INTR_MASK_ACTIVE ;
 int TOUCH_PAD_INTR_MASK_ALL ;
 int TOUCH_PAD_INTR_MASK_INACTIVE ;
 int TOUCH_PAD_SHIELD_DRV_L0 ;
 int TOUCH_PAD_THRESHOLD_MAX ;
 int * button ;
 int * que_touch ;
 int touch_pad_config (int ) ;
 int touch_pad_denoise_enable () ;
 int touch_pad_denoise_set_config (TYPE_2__) ;
 int touch_pad_fsm_start () ;
 int touch_pad_init () ;
 int touch_pad_intr_enable (int) ;
 int touch_pad_isr_register (int ,int *,int ) ;
 int touch_pad_set_fsm_mode (int ) ;
 int touch_pad_set_thresh (int ,int ) ;
 int touch_pad_waterproof_enable () ;
 int touch_pad_waterproof_set_config (TYPE_1__) ;
 int touchsensor_filter_set (int ) ;
 int touchsensor_interrupt_cb ;
 int tp_example_read_task ;
 int * xQueueCreate (int,int) ;
 int xTaskCreate (int *,char*,int,int *,int,int *) ;

void app_main(void)
{
    if (que_touch == ((void*)0)) {
        que_touch = xQueueCreate(TOUCH_BUTTON_NUM, sizeof(touch_event_t));
    }

    ESP_LOGI(TAG, "Initializing touch pad");

    touch_pad_init();
    for (int i = 0; i < TOUCH_BUTTON_NUM; i++) {
        touch_pad_config(button[i]);
        touch_pad_set_thresh(button[i], TOUCH_PAD_THRESHOLD_MAX);
    }
    touchsensor_filter_set(TOUCH_PAD_FILTER_IIR_8);

    touch_pad_isr_register(touchsensor_interrupt_cb, ((void*)0), TOUCH_PAD_INTR_MASK_ALL);
    touch_pad_intr_enable(TOUCH_PAD_INTR_MASK_ACTIVE | TOUCH_PAD_INTR_MASK_INACTIVE);



    touch_pad_set_fsm_mode(TOUCH_FSM_MODE_TIMER);
    touch_pad_fsm_start();


    xTaskCreate(&tp_example_read_task, "touch_pad_read_task", 2048, ((void*)0), 5, ((void*)0));
}
