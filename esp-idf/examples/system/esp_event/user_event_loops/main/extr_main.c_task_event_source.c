
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iteration ;
typedef scalar_t__ esp_event_loop_handle_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int TAG ;
 int TASK_EVENTS ;
 int TASK_ITERATIONS_COUNT ;
 int TASK_ITERATION_EVENT ;
 int TASK_PERIOD ;
 int esp_event_post_to (scalar_t__,int ,int ,int*,int,int ) ;
 scalar_t__ loop_with_task ;
 scalar_t__ loop_without_task ;
 int pdMS_TO_TICKS (int ) ;
 int portMAX_DELAY ;
 int vTaskDelay (int ) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void task_event_source(void* args)
{
    for(int iteration = 1; iteration <= TASK_ITERATIONS_COUNT; iteration++) {
        esp_event_loop_handle_t loop_to_post_to;

        if (iteration % 2 == 0) {

            loop_to_post_to = loop_with_task;
        } else {

            loop_to_post_to = loop_without_task;
        }

        ESP_LOGI(TAG, "posting %s:%s to %s, iteration %d out of %d", TASK_EVENTS, "TASK_ITERATION_EVENT",
                loop_to_post_to == loop_with_task ? "loop_with_task" : "loop_without_task",
                iteration, TASK_ITERATIONS_COUNT);

        ESP_ERROR_CHECK(esp_event_post_to(loop_to_post_to, TASK_EVENTS, TASK_ITERATION_EVENT, &iteration, sizeof(iteration), portMAX_DELAY));

        vTaskDelay(pdMS_TO_TICKS(TASK_PERIOD));
    }

    vTaskDelay(pdMS_TO_TICKS(TASK_PERIOD));

    ESP_LOGI(TAG, "deleting task event source");

    vTaskDelete(((void*)0));
}
