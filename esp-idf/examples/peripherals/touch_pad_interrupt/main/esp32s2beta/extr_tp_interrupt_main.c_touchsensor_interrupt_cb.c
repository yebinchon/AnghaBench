
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int intr_mask; int pad_val; int pad_num; int pad_status; } ;
typedef TYPE_1__ touch_event_t ;


 int TOUCH_PAD_INTR_MASK_DONE ;
 int pdFALSE ;
 int pdTRUE ;
 int portYIELD_FROM_ISR () ;
 int que_touch ;
 int touch_pad_filter_baseline_read (int ,int *) ;
 int touch_pad_get_scan_curr () ;
 int touch_pad_get_status () ;
 int touch_pad_intr_status_get_mask () ;
 int xQueueSendFromISR (int ,TYPE_1__*,int*) ;

__attribute__((used)) static void touchsensor_interrupt_cb(void *arg)
{
    int task_awoken = pdFALSE;
    touch_event_t evt;

    evt.intr_mask = touch_pad_intr_status_get_mask();
    evt.pad_status = touch_pad_get_status();
    evt.pad_num = touch_pad_get_scan_curr();

    if (evt.intr_mask & TOUCH_PAD_INTR_MASK_DONE) {
        touch_pad_filter_baseline_read(evt.pad_num, &evt.pad_val);
    }
    xQueueSendFromISR(que_touch, &evt, &task_awoken);
    if (task_awoken == pdTRUE) {
        portYIELD_FROM_ISR();
    }
}
