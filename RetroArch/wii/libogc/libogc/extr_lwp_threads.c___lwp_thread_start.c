
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {void* (* entry ) (void*) ;void* arg; int cur_state; } ;
typedef TYPE_1__ lwp_cntrl ;


 int __libc_start_hook (int ,TYPE_1__*) ;
 scalar_t__ __lwp_statedormant (int ) ;
 int __lwp_thread_loadenv (TYPE_1__*) ;
 int __lwp_thread_ready (TYPE_1__*) ;
 int _thr_executing ;
 int kprintf (char*,TYPE_1__*,void* (*) (void*),void*,int ) ;

u32 __lwp_thread_start(lwp_cntrl *thethread,void* (*entry)(void*),void *arg)
{



 if(__lwp_statedormant(thethread->cur_state)) {
  thethread->entry = entry;
  thethread->arg = arg;
  __lwp_thread_loadenv(thethread);
  __lwp_thread_ready(thethread);
  __libc_start_hook(_thr_executing,thethread);
  return 1;
 }
 return 0;
}
