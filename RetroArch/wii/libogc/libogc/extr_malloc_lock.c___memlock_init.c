
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prioceil; int onlyownerrelease; int nest_behavior; int mode; } ;
typedef TYPE_1__ lwp_mutex_attr ;


 int LWP_MUTEX_FIFO ;
 int LWP_MUTEX_NEST_ACQUIRE ;
 int LWP_MUTEX_UNLOCKED ;
 int TRUE ;
 int __lwp_mutex_initialize (int *,TYPE_1__*,int ) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchunnest () ;
 int initialized ;
 int mem_lock ;

void __memlock_init()
{
 __lwp_thread_dispatchdisable();
 if(!initialized) {
  lwp_mutex_attr attr;

  initialized = 1;

  attr.mode = LWP_MUTEX_FIFO;
  attr.nest_behavior = LWP_MUTEX_NEST_ACQUIRE;
  attr.onlyownerrelease = TRUE;
  attr.prioceil = 1;
  __lwp_mutex_initialize(&mem_lock,&attr,LWP_MUTEX_UNLOCKED);
 }
 __lwp_thread_dispatchunnest();
}
