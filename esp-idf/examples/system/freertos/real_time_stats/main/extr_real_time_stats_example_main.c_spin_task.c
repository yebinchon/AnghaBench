
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPIN_ITER ;
 int pdMS_TO_TICKS (int) ;
 int portMAX_DELAY ;
 int sync_spin_task ;
 int vTaskDelay (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void spin_task(void *arg)
{
    xSemaphoreTake(sync_spin_task, portMAX_DELAY);
    while (1) {

        for (int i = 0; i < SPIN_ITER; i++) {
            __asm__ __volatile__("NOP");
        }
        vTaskDelay(pdMS_TO_TICKS(100));
    }
}
