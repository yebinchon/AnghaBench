
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* has_run ;
 int vTaskDelete (int *) ;
 size_t xPortGetCoreID () ;

__attribute__((used)) static void task(void *arg)
{
    has_run[xPortGetCoreID()] = 1;
    vTaskDelete(((void*)0));
}
