
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test_select_task_param_t ;


 int select_task ;
 int xTaskCreate (int ,char*,int,void*,int,int *) ;

__attribute__((used)) static void inline start_select_task(test_select_task_param_t *param)
{
    xTaskCreate(select_task, "select_task", 4*1024, (void *) param, 5, ((void*)0));
}
