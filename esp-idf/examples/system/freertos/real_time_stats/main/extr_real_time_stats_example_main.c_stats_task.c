
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ESP_OK ;
 int NUM_OF_SPIN_TASKS ;
 int STATS_TICKS ;
 int pdMS_TO_TICKS (int) ;
 int portMAX_DELAY ;
 scalar_t__ print_real_time_stats (int) ;
 int printf (char*,...) ;
 int sync_spin_task ;
 int sync_stats_task ;
 int vTaskDelay (int ) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void stats_task(void *arg)
{
    xSemaphoreTake(sync_stats_task, portMAX_DELAY);


    for (int i = 0; i < NUM_OF_SPIN_TASKS; i++) {
        xSemaphoreGive(sync_spin_task);
    }


    while (1) {
        printf("\n\nGetting real time stats over %d ticks\n", STATS_TICKS);
        if (print_real_time_stats(STATS_TICKS) == ESP_OK) {
            printf("Real time stats obtained\n");
        } else {
            printf("Error getting real time stats\n");
        }
        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}
