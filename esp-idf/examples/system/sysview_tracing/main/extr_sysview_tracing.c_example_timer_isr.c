
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; int group; int count; int * thnd; } ;
typedef TYPE_1__ example_event_data_t ;
typedef scalar_t__ BaseType_t ;


 int ESP_EARLY_LOGE (int ,char*,int *) ;
 int SYSVIEW_EXAMPLE_SEND_EVENT_END (int ) ;
 int SYSVIEW_EXAMPLE_SEND_EVENT_START () ;
 int TAG ;
 int eSetValueWithOverwrite ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdPASS ;
 scalar_t__ pdTRUE ;
 int portYIELD_FROM_ISR () ;
 int timer_group_enable_alarm_in_isr (int ,int ) ;
 int timer_group_intr_clr_in_isr (int ,int ) ;
 scalar_t__ xTaskNotifyFromISR (int *,int ,int ,scalar_t__*) ;

__attribute__((used)) static void example_timer_isr(void *arg)
{
    example_event_data_t *tim_arg = (example_event_data_t *)arg;

    if (tim_arg->thnd != ((void*)0)) {
        if (tim_arg->count++ < 10) {
            BaseType_t xHigherPriorityTaskWoken = pdFALSE;
            SYSVIEW_EXAMPLE_SEND_EVENT_START();
            if (xTaskNotifyFromISR(tim_arg->thnd, tim_arg->count, eSetValueWithOverwrite, &xHigherPriorityTaskWoken) != pdPASS) {
                ESP_EARLY_LOGE(TAG, "Failed to notify task %p", tim_arg->thnd);
            } else {
                SYSVIEW_EXAMPLE_SEND_EVENT_END(tim_arg->count);
                if (xHigherPriorityTaskWoken == pdTRUE) {
                    portYIELD_FROM_ISR();
                }
            }
        }
    }

    timer_group_intr_clr_in_isr(tim_arg->group, tim_arg->timer);
    timer_group_enable_alarm_in_isr(tim_arg->group, tim_arg->timer);
}
