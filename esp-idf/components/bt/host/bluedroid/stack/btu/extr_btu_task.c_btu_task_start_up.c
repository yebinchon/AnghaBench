
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTE_InitStack () ;
 int UNUSED (void*) ;
 int bluedroid_init_done_cb () ;
 int bta_sys_init () ;
 int btu_init_core () ;

void btu_task_start_up(void *param)
{
    UNUSED(param);



    btu_init_core();


    BTE_InitStack();
}
