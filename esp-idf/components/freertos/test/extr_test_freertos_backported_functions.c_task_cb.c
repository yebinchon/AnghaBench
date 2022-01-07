
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int NO_OF_TLSP ;
 int TEST_ASSERT_EQUAL (int ,int) ;
 int TLSP_SET_BASE ;
 int del_cb ;
 scalar_t__ pvTaskGetThreadLocalStoragePointer (int *,int) ;
 int** task_storage ;
 int vTaskDelete (int *) ;
 int vTaskSetThreadLocalStoragePointerAndDelCallback (int *,int,void*,int ) ;
 int xPortGetCoreID () ;

__attribute__((used)) static void task_cb(void *arg)
{
    int core = xPortGetCoreID();
    for(int i = 0; i < NO_OF_TLSP; i++){
        task_storage[core][i] = (TLSP_SET_BASE << i);
        vTaskSetThreadLocalStoragePointerAndDelCallback(((void*)0), i, (void *)&task_storage[core][i], del_cb);
    }

    for(int i = 0; i < NO_OF_TLSP; i++){
        uint32_t * tlsp = (uint32_t *)pvTaskGetThreadLocalStoragePointer(((void*)0), i);
        TEST_ASSERT_EQUAL(*tlsp, (TLSP_SET_BASE << i));
    }

    vTaskDelete(((void*)0));
}
