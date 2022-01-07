
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int thread_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_5__ {int task; int exit_thread; } ;


 int FALSE ;
 int current_thread () ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int task_hold (int ) ;
 int task_wait (int ,int ) ;

void
sig_lock_to_exit(proc_t p)
{
 thread_t self = current_thread();

 p->exit_thread = self;
 proc_unlock(p);

 task_hold(p->task);
 task_wait(p->task, FALSE);

 proc_lock(p);
}
