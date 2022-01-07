
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int pid_t ;
struct TYPE_6__ {int did_throttle; int was_throttled; } ;


 int OSAddAtomic64 (int,int *) ;
 TYPE_1__* PROC_NULL ;
 TYPE_1__* current_proc () ;
 TYPE_1__* proc_find (int ) ;
 int proc_rele (TYPE_1__*) ;

__attribute__((used)) static void
throttle_update_proc_stats(pid_t throttling_pid, int count)
{
 proc_t throttling_proc;
 proc_t throttled_proc = current_proc();


 OSAddAtomic64(count, &(throttled_proc->was_throttled));


 throttling_proc = proc_find(throttling_pid);
 if (throttling_proc != PROC_NULL) {
  OSAddAtomic64(count, &(throttling_proc->did_throttle));
  proc_rele(throttling_proc);
 }
}
