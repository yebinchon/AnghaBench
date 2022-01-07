
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_mtx_unlock (int ) ;
 int proc_klist_mlock ;

void
proc_klist_unlock(void)
{
 lck_mtx_unlock(proc_klist_mlock);
}
