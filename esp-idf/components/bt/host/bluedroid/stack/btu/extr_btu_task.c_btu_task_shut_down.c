
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTE_DeinitStack () ;
 int bta_sys_free () ;
 int btu_free_core () ;

void btu_task_shut_down(void)
{



    BTE_DeinitStack();

    btu_free_core();
}
