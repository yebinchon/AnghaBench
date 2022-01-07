
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int esp_err_t ;
typedef int UBaseType_t ;
typedef int TickType_t ;
struct TYPE_5__ {scalar_t__ ulRunTimeCounter; char* pcTaskName; int * xHandle; } ;
typedef TYPE_1__ TaskStatus_t ;


 int ARRAY_SIZE_OFFSET ;
 int ESP_ERR_INVALID_SIZE ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 scalar_t__ portNUM_PROCESSORS ;
 int printf (char*,...) ;
 int uxTaskGetNumberOfTasks () ;
 int uxTaskGetSystemState (TYPE_1__*,int,scalar_t__*) ;
 int vTaskDelay (int ) ;

__attribute__((used)) static esp_err_t print_real_time_stats(TickType_t xTicksToWait)
{
    TaskStatus_t *start_array = ((void*)0), *end_array = ((void*)0);
    UBaseType_t start_array_size, end_array_size;
    uint32_t start_run_time, end_run_time;
    esp_err_t ret;


    start_array_size = uxTaskGetNumberOfTasks() + ARRAY_SIZE_OFFSET;
    start_array = malloc(sizeof(TaskStatus_t) * start_array_size);
    if (start_array == ((void*)0)) {
        ret = ESP_ERR_NO_MEM;
        goto exit;
    }

    start_array_size = uxTaskGetSystemState(start_array, start_array_size, &start_run_time);
    if (start_array_size == 0) {
        ret = ESP_ERR_INVALID_SIZE;
        goto exit;
    }

    vTaskDelay(xTicksToWait);


    end_array_size = uxTaskGetNumberOfTasks() + ARRAY_SIZE_OFFSET;
    end_array = malloc(sizeof(TaskStatus_t) * end_array_size);
    if (end_array == ((void*)0)) {
        ret = ESP_ERR_NO_MEM;
        goto exit;
    }

    end_array_size = uxTaskGetSystemState(end_array, end_array_size, &end_run_time);
    if (end_array_size == 0) {
        ret = ESP_ERR_INVALID_SIZE;
        goto exit;
    }


    uint32_t total_elapsed_time = (end_run_time - start_run_time);
    if (total_elapsed_time == 0) {
        ret = ESP_ERR_INVALID_STATE;
        goto exit;
    }

    printf("| Task | Run Time | Percentage\n");

    for (int i = 0; i < start_array_size; i++) {
        int k = -1;
        for (int j = 0; j < end_array_size; j++) {
            if (start_array[i].xHandle == end_array[j].xHandle) {
                k = j;

                start_array[i].xHandle = ((void*)0);
                end_array[j].xHandle = ((void*)0);
                break;
            }
        }

        if (k >= 0) {
            uint32_t task_elapsed_time = end_array[k].ulRunTimeCounter - start_array[i].ulRunTimeCounter;
            uint32_t percentage_time = (task_elapsed_time * 100UL) / (total_elapsed_time * portNUM_PROCESSORS);
            printf("| %s | %d | %d%%\n", start_array[i].pcTaskName, task_elapsed_time, percentage_time);
        }
    }


    for (int i = 0; i < start_array_size; i++) {
        if (start_array[i].xHandle != ((void*)0)) {
            printf("| %s | Deleted\n", start_array[i].pcTaskName);
        }
    }
    for (int i = 0; i < end_array_size; i++) {
        if (end_array[i].xHandle != ((void*)0)) {
            printf("| %s | Created\n", end_array[i].pcTaskName);
        }
    }
    ret = ESP_OK;

exit:
    free(start_array);
    free(end_array);
    return ret;
}
