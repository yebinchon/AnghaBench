
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int timer_isr_handle_t ;
struct TYPE_3__ {int timer; int group; } ;
typedef TYPE_1__ example_event_data_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*,int ,...) ;
 scalar_t__ ESP_OK ;
 int SYSVIEW_EXAMPLE_WAIT_EVENT_END (int ) ;
 int SYSVIEW_EXAMPLE_WAIT_EVENT_START () ;
 int TAG ;
 int example_timer_isr ;
 int portMAX_DELAY ;
 scalar_t__ timer_isr_register (int ,int ,int ,TYPE_1__*,int ,int *) ;
 scalar_t__ timer_start (int ,int ) ;
 int xTaskGetCurrentTaskHandle () ;
 int xTaskNotifyWait (int ,int ,int *,int ) ;

__attribute__((used)) static void example_task(void *p)
{
    example_event_data_t *arg = (example_event_data_t *) p;
    timer_isr_handle_t inth;

    ESP_LOGI(TAG, "%p: run task", xTaskGetCurrentTaskHandle());

    esp_err_t res = timer_isr_register(arg->group, arg->timer, example_timer_isr, arg, 0, &inth);
    if (res != ESP_OK) {
        ESP_LOGE(TAG, "%p: failed to register timer ISR", xTaskGetCurrentTaskHandle());
    } else {
        res = timer_start(arg->group, arg->timer);
        if (res != ESP_OK) {
            ESP_LOGE(TAG, "%p: failed to start timer", xTaskGetCurrentTaskHandle());
        }
    }

    while (1) {
        uint32_t event_val;
        SYSVIEW_EXAMPLE_WAIT_EVENT_START();
        xTaskNotifyWait(0, 0, &event_val, portMAX_DELAY);
        SYSVIEW_EXAMPLE_WAIT_EVENT_END(event_val);
        ESP_LOGI(TAG, "Task[%p]: received event %d", xTaskGetCurrentTaskHandle(), event_val);
    }
}
