
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT_CALL ;
 int BIT_RESPONSE (int) ;
 int COUNT ;
 int TEST_ASSERT (int ) ;
 int done_sem ;
 int eg ;
 int portMAX_DELAY ;
 int printf (char*,int) ;
 int vTaskDelete (int *) ;
 int xEventGroupSetBits (int ,int ) ;
 int xEventGroupWaitBits (int ,int ,int,int,int ) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void task_event_group_call_response(void *param)
{
    int task_num = (int)param;

    printf("Started %d\n", task_num);

    for (int i = 0; i < COUNT; i++) {


        TEST_ASSERT( xEventGroupWaitBits(eg, BIT_CALL, 1, 0, portMAX_DELAY) );


        xEventGroupSetBits(eg, BIT_RESPONSE(task_num));
    }

    printf("Task %d done\n", task_num);
    xSemaphoreGive(done_sem);
    vTaskDelete(((void*)0));
}
