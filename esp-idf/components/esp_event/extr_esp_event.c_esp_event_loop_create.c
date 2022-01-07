
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int esp_event_post_instance_t ;
struct TYPE_9__ {char* name; int * profiling_mutex; int * mutex; int * queue; int * running_task; int * task; int loop_nodes; } ;
typedef TYPE_1__ esp_event_loop_instance_t ;
typedef scalar_t__ esp_event_loop_handle_t ;
struct TYPE_10__ {char* task_name; int task_core_id; int task_priority; int task_stack_size; int queue_size; } ;
typedef TYPE_2__ esp_event_loop_args_t ;
typedef int esp_err_t ;
typedef scalar_t__ BaseType_t ;


 int ESP_ERR_NO_MEM ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,TYPE_1__*) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int TAG ;
 int assert (TYPE_2__ const*) ;
 TYPE_1__* calloc (int,int) ;
 int esp_event_loop_run_task ;
 int free (TYPE_1__*) ;
 int next ;
 scalar_t__ pdPASS ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int s_event_loops ;
 int s_event_loops_spinlock ;
 int vQueueDelete (int *) ;
 int vSemaphoreDelete (int *) ;
 int * xQueueCreate (int ,int) ;
 int * xSemaphoreCreateMutex () ;
 int * xSemaphoreCreateRecursiveMutex () ;
 scalar_t__ xTaskCreatePinnedToCore (int ,char*,int ,void*,int ,int **,int ) ;

esp_err_t esp_event_loop_create(const esp_event_loop_args_t* event_loop_args, esp_event_loop_handle_t* event_loop)
{
    assert(event_loop_args);

    esp_event_loop_instance_t* loop;
    esp_err_t err = ESP_ERR_NO_MEM;

    loop = calloc(1, sizeof(*loop));
    if (loop == ((void*)0)) {
        ESP_LOGE(TAG, "alloc for event loop failed");
        return err;
    }

    loop->queue = xQueueCreate(event_loop_args->queue_size , sizeof(esp_event_post_instance_t));
    if (loop->queue == ((void*)0)) {
        ESP_LOGE(TAG, "create event loop queue failed");
        goto on_err;
    }

    loop->mutex = xSemaphoreCreateRecursiveMutex();
    if (loop->mutex == ((void*)0)) {
        ESP_LOGE(TAG, "create event loop mutex failed");
        goto on_err;
    }
    SLIST_INIT(&(loop->loop_nodes));


    if (event_loop_args->task_name != ((void*)0)) {
        BaseType_t task_created = xTaskCreatePinnedToCore(esp_event_loop_run_task, event_loop_args->task_name,
                    event_loop_args->task_stack_size, (void*) loop,
                    event_loop_args->task_priority, &(loop->task), event_loop_args->task_core_id);

        if (task_created != pdPASS) {
            ESP_LOGE(TAG, "create task for loop failed");
            err = ESP_FAIL;
            goto on_err;
        }

        loop->name = event_loop_args->task_name;

        ESP_LOGD(TAG, "created task for loop %p", loop);
    } else {
        loop->name = "";
        loop->task = ((void*)0);
    }

    loop->running_task = ((void*)0);







    *event_loop = (esp_event_loop_handle_t) loop;

    ESP_LOGD(TAG, "created event loop %p", loop);

    return ESP_OK;

on_err:
    if (loop->queue != ((void*)0)) {
        vQueueDelete(loop->queue);
    }

    if (loop->mutex != ((void*)0)) {
        vSemaphoreDelete(loop->mutex);
    }







    free(loop);

    return err;
}
