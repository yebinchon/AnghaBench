
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_OF_SPIN_TASKS ;
 int SPIN_TASK_PRIO ;
 int STATS_TASK_PRIO ;
 int configMAX_TASK_NAME_LEN ;
 int pdMS_TO_TICKS (int) ;
 int snprintf (char*,int ,char*,int) ;
 int spin_task ;
 int stats_task ;
 int sync_spin_task ;
 int sync_stats_task ;
 char** task_names ;
 int tskNO_AFFINITY ;
 int vTaskDelay (int ) ;
 int xSemaphoreCreateBinary () ;
 int xSemaphoreCreateCounting (int,int ) ;
 int xSemaphoreGive (int ) ;
 int xTaskCreatePinnedToCore (int ,char*,int,int *,int ,int *,int ) ;

void app_main(void)
{

    vTaskDelay(pdMS_TO_TICKS(100));


    sync_spin_task = xSemaphoreCreateCounting(NUM_OF_SPIN_TASKS, 0);
    sync_stats_task = xSemaphoreCreateBinary();


    for (int i = 0; i < NUM_OF_SPIN_TASKS; i++) {
        snprintf(task_names[i], configMAX_TASK_NAME_LEN, "spin%d", i);
        xTaskCreatePinnedToCore(spin_task, task_names[i], 1024, ((void*)0), SPIN_TASK_PRIO, ((void*)0), tskNO_AFFINITY);
    }


    xTaskCreatePinnedToCore(stats_task, "stats", 4096, ((void*)0), STATS_TASK_PRIO, ((void*)0), tskNO_AFFINITY);
    xSemaphoreGive(sync_stats_task);
}
