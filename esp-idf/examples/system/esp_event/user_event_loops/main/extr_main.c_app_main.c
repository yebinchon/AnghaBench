
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue_size; char* task_name; int task_stack_size; int task_core_id; int task_priority; } ;
typedef TYPE_1__ esp_event_loop_args_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int TASK_EVENTS ;
 int TASK_ITERATION_EVENT ;
 int application_task ;
 int esp_event_handler_register_with (int ,int ,int ,int ,int ) ;
 int esp_event_loop_create (TYPE_1__*,int *) ;
 int loop_with_task ;
 int loop_without_task ;
 int task_event_source ;
 int task_iteration_handler ;
 int tskNO_AFFINITY ;
 int uxTaskPriorityGet (int *) ;
 int xTaskCreate (int ,char*,int,int *,int ,int *) ;

void app_main(void)
{
    ESP_LOGI(TAG, "setting up");

    esp_event_loop_args_t loop_with_task_args = {
        .queue_size = 5,
        .task_name = "loop_task",
        .task_priority = uxTaskPriorityGet(((void*)0)),
        .task_stack_size = 2048,
        .task_core_id = tskNO_AFFINITY
    };

    esp_event_loop_args_t loop_without_task_args = {
        .queue_size = 5,
        .task_name = ((void*)0)
    };


    ESP_ERROR_CHECK(esp_event_loop_create(&loop_with_task_args, &loop_with_task));
    ESP_ERROR_CHECK(esp_event_loop_create(&loop_without_task_args, &loop_without_task));



    ESP_ERROR_CHECK(esp_event_handler_register_with(loop_with_task, TASK_EVENTS, TASK_ITERATION_EVENT, task_iteration_handler, loop_with_task));
    ESP_ERROR_CHECK(esp_event_handler_register_with(loop_without_task, TASK_EVENTS, TASK_ITERATION_EVENT, task_iteration_handler, loop_without_task));

    ESP_LOGI(TAG, "starting event source");


    xTaskCreate(task_event_source, "task_event_source", 2048, ((void*)0), uxTaskPriorityGet(((void*)0)), ((void*)0));

    ESP_LOGI(TAG, "starting application task");

    xTaskCreate(application_task, "application_task", 2048, ((void*)0), uxTaskPriorityGet(((void*)0)), ((void*)0));
}
