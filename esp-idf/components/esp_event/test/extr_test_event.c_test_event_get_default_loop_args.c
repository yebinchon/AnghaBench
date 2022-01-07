
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* task_name; int task_stack_size; int task_core_id; int task_priority; int queue_size; } ;
typedef TYPE_1__ esp_event_loop_args_t ;


 int CONFIG_ESP_SYSTEM_EVENT_QUEUE_SIZE ;
 int s_test_priority ;
 int test_event_get_core () ;

__attribute__((used)) static esp_event_loop_args_t test_event_get_default_loop_args(void)
{
    esp_event_loop_args_t loop_config = {
        .queue_size = CONFIG_ESP_SYSTEM_EVENT_QUEUE_SIZE,
        .task_name = "loop",
        .task_priority = s_test_priority,
        .task_stack_size = 2048,
        .task_core_id = test_event_get_core()
    };

    return loop_config;
}
