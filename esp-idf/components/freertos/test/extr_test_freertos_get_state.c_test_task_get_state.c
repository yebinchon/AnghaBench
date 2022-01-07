
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT (int) ;
 int blocked_task_handle ;
 int done_sem ;
 scalar_t__ eBlocked ;
 scalar_t__ eReady ;
 scalar_t__ eRunning ;
 scalar_t__ eSuspended ;
 scalar_t__ eTaskGetState (int ) ;
 int suspended_task_handle ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;
 int xTaskGetCurrentTaskHandle () ;
 int xTaskGetIdleTaskHandle () ;

void test_task_get_state(void* arg)
{

    TEST_ASSERT(eTaskGetState(xTaskGetCurrentTaskHandle()) == eRunning);

    TEST_ASSERT(eTaskGetState(xTaskGetIdleTaskHandle()) == eReady);

    TEST_ASSERT(eTaskGetState(blocked_task_handle) == eBlocked);

    TEST_ASSERT(eTaskGetState(suspended_task_handle) == eSuspended);

    xSemaphoreGive(done_sem);
    vTaskDelete(((void*)0));
}
