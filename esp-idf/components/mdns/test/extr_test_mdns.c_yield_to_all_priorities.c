
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int taskYIELD () ;
 size_t tskIDLE_PRIORITY ;
 size_t uxTaskPriorityGet (int *) ;
 int vTaskPrioritySet (int *,size_t) ;

__attribute__((used)) static void yield_to_all_priorities(void)
{

    size_t test_task_prio_before = uxTaskPriorityGet(((void*)0));
    vTaskPrioritySet(((void*)0), tskIDLE_PRIORITY);
    taskYIELD();
    vTaskPrioritySet(((void*)0), test_task_prio_before);
}
