
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_RESPONSE_BITS ;
 int BIT_DONE (int) ;
 int BIT_RESPONSE (int) ;
 int COUNT ;
 int done_sem ;
 int eg ;
 int portMAX_DELAY ;
 int printf (char*,int,...) ;
 int vTaskDelete (int *) ;
 int xEventGroupClearBits (int ,int ) ;
 int xEventGroupSetBits (int ,int ) ;
 int xEventGroupSync (int ,int ,int ,int ) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void task_test_sync(void *param)
{
    int task_num = (int)param;

    printf("Started %d\n", task_num);

    for (int i = 0; i < COUNT; i++) {

        xEventGroupSync(eg, BIT_RESPONSE(task_num), ALL_RESPONSE_BITS, portMAX_DELAY);

        xEventGroupClearBits(eg, BIT_RESPONSE(task_num));
    }
    int after_done = xEventGroupSetBits(eg, BIT_DONE(task_num));

    printf("Done %d = 0x%08x\n", task_num, after_done);

    xSemaphoreGive(done_sem);
    vTaskDelete(((void*)0));
}
