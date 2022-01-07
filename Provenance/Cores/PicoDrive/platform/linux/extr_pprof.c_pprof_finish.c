
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPC_RMID ;
 int pp_counters ;
 int shmctl (int ,int ,int *) ;
 int shmdt (int ) ;
 int shmemid ;

void pprof_finish(void)
{
 shmdt(pp_counters);
 shmctl(shmemid, IPC_RMID, ((void*)0));
}
