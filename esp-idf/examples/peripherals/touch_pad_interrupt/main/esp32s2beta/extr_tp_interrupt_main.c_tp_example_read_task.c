
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int intr_mask; scalar_t__ pad_num; int pad_val; int pad_status; int member_0; } ;
typedef TYPE_1__ touch_event_t ;
typedef int portTickType ;


 int ESP_LOGI (int ,char*,scalar_t__,int ) ;
 int ESP_LOGW (int ,char*,...) ;
 int TAG ;
 int TOUCH_PAD_INTR_MASK_ACTIVE ;
 int TOUCH_PAD_INTR_MASK_DONE ;
 int TOUCH_PAD_INTR_MASK_INACTIVE ;
 scalar_t__* button ;
 int pdTRUE ;
 scalar_t__ portMAX_DELAY ;
 int portTICK_RATE_MS ;
 int que_touch ;
 int tp_example_set_thresholds () ;
 int vTaskDelay (int) ;
 int xQueueReceive (int ,TYPE_1__*,int ) ;

__attribute__((used)) static void tp_example_read_task(void *pvParameter)
{
    touch_event_t evt = {0};
    static uint8_t guard_mode_flag = 0;

    vTaskDelay(100 / portTICK_RATE_MS);
    tp_example_set_thresholds();

    while (1) {
        int ret = xQueueReceive(que_touch, &evt, (portTickType)portMAX_DELAY);
        if (ret != pdTRUE) {
            continue;
        }
        if (evt.intr_mask & TOUCH_PAD_INTR_MASK_ACTIVE) {

            if (evt.pad_num == button[3]) {
                guard_mode_flag = 1;
                ESP_LOGW(TAG, "TouchSensor [%d] be actived, enter guard mode", evt.pad_num);
            } else {
                if (guard_mode_flag == 0) {
                    ESP_LOGI(TAG, "TouchSensor [%d] be actived, status mask 0x%x", evt.pad_num, evt.pad_status);
                } else {
                    ESP_LOGW(TAG, "In guard mode. No response");
                }
            }
        }
        if (evt.intr_mask & TOUCH_PAD_INTR_MASK_INACTIVE) {

            if (evt.pad_num == button[3]) {
                guard_mode_flag = 0;
                ESP_LOGW(TAG, "TouchSensor [%d] be actived, exit guard mode", evt.pad_num);
            } else {
                if (guard_mode_flag == 0) {
                    ESP_LOGI(TAG, "TouchSensor [%d] be inactived, status mask 0x%x", evt.pad_num, evt.pad_status);
                }
            }
        }
        if (evt.intr_mask & TOUCH_PAD_INTR_MASK_DONE) {
            ESP_LOGI(TAG, "TouchSensor [%d] measure done, raw data %d", evt.pad_num, evt.pad_val);
        }
    }
}
