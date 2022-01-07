
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iteration ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,int ,int ,...) ;
 int TAG ;
 int TASK_EVENTS ;
 int TASK_ITERATIONS_COUNT ;
 int TASK_ITERATIONS_UNREGISTER ;
 int TASK_ITERATION_EVENT ;
 int TASK_PERIOD ;
 int esp_event_handler_unregister (int ,int ,int ) ;
 int esp_event_post (int ,int ,int*,int,int ) ;
 int get_id_string (int ,int ) ;
 int pdMS_TO_TICKS (int ) ;
 int portMAX_DELAY ;
 int task_iteration_handler ;
 int vTaskDelay (int ) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void task_event_source(void* args)
{
    for(int iteration = 1; iteration <= TASK_ITERATIONS_COUNT; iteration++) {

        ESP_LOGI(TAG, "%s:%s: posting to default loop, %d out of %d", TASK_EVENTS,
                get_id_string(TASK_EVENTS, TASK_ITERATION_EVENT), iteration, TASK_ITERATIONS_COUNT);



        ESP_ERROR_CHECK(esp_event_post(TASK_EVENTS, TASK_ITERATION_EVENT, &iteration, sizeof(iteration), portMAX_DELAY));

        if (iteration == TASK_ITERATIONS_UNREGISTER) {
            ESP_LOGI(TAG, "%s:%s: unregistering task_iteration_handler", TASK_EVENTS, get_id_string(TASK_EVENTS, TASK_ITERATION_EVENT));
            ESP_ERROR_CHECK(esp_event_handler_unregister(TASK_EVENTS, TASK_ITERATION_EVENT, task_iteration_handler));
        }

        vTaskDelay(pdMS_TO_TICKS(TASK_PERIOD));
    }

    vTaskDelay(pdMS_TO_TICKS(TASK_PERIOD));

    ESP_LOGI(TAG, "%s:%s: deleting task event source", TASK_EVENTS, get_id_string(TASK_EVENTS, TASK_ITERATION_EVENT));

    vTaskDelete(((void*)0));
}
