
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int ret_arg; } ;
struct TYPE_6__ {TYPE_1__ wait; int arg; int (* entry ) (int ) ;int isr_level; } ;
typedef TYPE_2__ lwp_cntrl ;


 int __lwp_msr_setlevel (int ) ;
 int __lwp_thread_dispatchenable () ;
 int __lwp_thread_exit (int ) ;
 TYPE_2__* _thr_executing ;
 int _thread_dispatch_disable_level ;
 int kprintf (char*,TYPE_2__*,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void __lwp_thread_handler()
{
 u32 level;
 lwp_cntrl *exec;

 exec = _thr_executing;



 level = exec->isr_level;
 __lwp_msr_setlevel(level);
 __lwp_thread_dispatchenable();
 exec->wait.ret_arg = exec->entry(exec->arg);

 __lwp_thread_exit(exec->wait.ret_arg);



}
