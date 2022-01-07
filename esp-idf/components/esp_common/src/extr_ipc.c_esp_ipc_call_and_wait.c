
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int esp_ipc_wait_t ;
typedef int esp_ipc_func_t ;
typedef int esp_err_t ;
typedef scalar_t__ UBaseType_t ;
typedef int TaskHandle_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 int portMAX_DELAY ;
 size_t portNUM_PROCESSORS ;
 int * s_func ;
 void** s_func_arg ;
 int * s_ipc_ack ;
 int * s_ipc_mutex ;
 int * s_ipc_sem ;
 int * s_ipc_task_handle ;
 int * s_ipc_wait ;
 scalar_t__ taskSCHEDULER_RUNNING ;
 scalar_t__ uxTaskPriorityGet (int ) ;
 int vTaskPrioritySet (int ,scalar_t__) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;
 int xTaskGetCurrentTaskHandle () ;
 scalar_t__ xTaskGetSchedulerState () ;

__attribute__((used)) static esp_err_t esp_ipc_call_and_wait(uint32_t cpu_id, esp_ipc_func_t func, void* arg, esp_ipc_wait_t wait_for)
{
    if (cpu_id >= portNUM_PROCESSORS) {
        return ESP_ERR_INVALID_ARG;
    }
    if (xTaskGetSchedulerState() != taskSCHEDULER_RUNNING) {
        return ESP_ERR_INVALID_STATE;
    }
    xSemaphoreTake(s_ipc_mutex[0], portMAX_DELAY);


    s_func[cpu_id] = func;
    s_func_arg[cpu_id] = arg;
    s_ipc_wait[cpu_id] = wait_for;
    xSemaphoreGive(s_ipc_sem[cpu_id]);
    xSemaphoreTake(s_ipc_ack[cpu_id], portMAX_DELAY);



    xSemaphoreGive(s_ipc_mutex[0]);

    return ESP_OK;
}
