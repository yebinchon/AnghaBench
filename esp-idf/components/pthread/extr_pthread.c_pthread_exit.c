
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; scalar_t__ join_task; void* retval; scalar_t__ detached; scalar_t__ task_arg; } ;
typedef TYPE_1__ esp_pthread_t ;


 int ESP_LOGD (int ,char*,int ) ;
 int PTHREAD_TASK_STATE_EXIT ;
 int TAG ;
 int abort () ;
 int assert (int ) ;
 int eNoAction ;
 int free (scalar_t__) ;
 scalar_t__ pdTRUE ;
 int portMAX_DELAY ;
 int pthread_delete (TYPE_1__*) ;
 TYPE_1__* pthread_find (int ) ;
 int pthread_internal_local_storage_destructor_callback () ;
 int s_threads_mux ;
 int uxTaskGetStackHighWaterMark (int *) ;
 int vTaskDelete (int *) ;
 int vTaskSuspend (int *) ;
 int xSemaphoreGive (int ) ;
 scalar_t__ xSemaphoreTake (int ,int ) ;
 int xTaskGetCurrentTaskHandle () ;
 int xTaskNotify (scalar_t__,int ,int ) ;

void pthread_exit(void *value_ptr)
{
    bool detached = 0;


    pthread_internal_local_storage_destructor_callback();

    if (xSemaphoreTake(s_threads_mux, portMAX_DELAY) != pdTRUE) {
        assert(0 && "Failed to lock threads list!");
    }
    esp_pthread_t *pthread = pthread_find(xTaskGetCurrentTaskHandle());
    if (!pthread) {
        assert(0 && "Failed to find pthread for current task!");
    }
    if (pthread->task_arg) {
        free(pthread->task_arg);
    }
    if (pthread->detached) {

        pthread_delete(pthread);
        detached = 1;
    } else {

        pthread->retval = value_ptr;

        if (pthread->join_task) {

            xTaskNotify(pthread->join_task, 0, eNoAction);
        } else {
            pthread->state = PTHREAD_TASK_STATE_EXIT;
        }
    }
    xSemaphoreGive(s_threads_mux);

    ESP_LOGD(TAG, "Task stk_wm = %d", uxTaskGetStackHighWaterMark(((void*)0)));

    if (detached) {
        vTaskDelete(((void*)0));
    } else {
        vTaskSuspend(((void*)0));
    }


    abort();
}
