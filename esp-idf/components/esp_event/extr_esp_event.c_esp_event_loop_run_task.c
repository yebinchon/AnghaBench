
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_event_loop_handle_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGD (int ,char*,int ) ;
 int ESP_LOGE (int ,char*,int ) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ esp_event_loop_run (int ,int ) ;
 int portMAX_DELAY ;
 int vTaskSuspend (int *) ;

__attribute__((used)) static void esp_event_loop_run_task(void* args)
{
    esp_err_t err;
    esp_event_loop_handle_t event_loop = (esp_event_loop_handle_t) args;

    ESP_LOGD(TAG, "running task for loop %p", event_loop);

    while(1) {
        err = esp_event_loop_run(event_loop, portMAX_DELAY);
        if (err != ESP_OK) {
            break;
        }
    }

    ESP_LOGE(TAG, "suspended task for loop %p", event_loop);
    vTaskSuspend(((void*)0));
}
