
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int * ret_arg; } ;
struct TYPE_5__ {TYPE_1__ wait; } ;


 int __lwp_thread_close (TYPE_2__*) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchenable () ;
 TYPE_2__* _thr_executing ;

void __lwp_thread_exit(void *value_ptr)
{
 __lwp_thread_dispatchdisable();
 _thr_executing->wait.ret_arg = (u32*)value_ptr;
 __lwp_thread_close(_thr_executing);
 __lwp_thread_dispatchenable();
}
