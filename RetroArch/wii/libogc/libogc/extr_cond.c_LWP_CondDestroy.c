
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int s32 ;
typedef int cond_t ;
struct TYPE_4__ {int wait_queue; } ;
typedef TYPE_1__ cond_st ;


 int EBUSY ;
 int __lwp_cond_free (TYPE_1__*) ;
 TYPE_1__* __lwp_cond_open (int ) ;
 int __lwp_thread_dispatchenable () ;
 scalar_t__ __lwp_threadqueue_first (int *) ;

s32 LWP_CondDestroy(cond_t cond)
{
 cond_st *ptr = __lwp_cond_open(cond);
 if(!ptr) return -1;

 if(__lwp_threadqueue_first(&ptr->wait_queue)) {
  __lwp_thread_dispatchenable();
  return EBUSY;
 }
 __lwp_thread_dispatchenable();

 __lwp_cond_free(ptr);
 return 0;
}
