
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int pid_t ;
struct TYPE_3__ {int p_responsible_pid; } ;



void proc_set_responsible_pid(proc_t target_proc, pid_t responsible_pid)
{
 if (target_proc != ((void*)0)) {
  target_proc->p_responsible_pid = responsible_pid;
 }
 return;
}
