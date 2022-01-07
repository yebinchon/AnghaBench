
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int s32 ;
typedef int mutex_t ;
struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ mutex_st ;


 int EBUSY ;
 int EINVAL ;
 int __lwp_mutex_flush (int *,int ) ;
 int __lwp_mutex_free (TYPE_1__*) ;
 scalar_t__ __lwp_mutex_locked (int *) ;
 TYPE_1__* __lwp_mutex_open (int ) ;
 int __lwp_thread_dispatchenable () ;

s32 LWP_MutexDestroy(mutex_t mutex)
{
 mutex_st *p = __lwp_mutex_open(mutex);
 if(!p) return 0;

 if(__lwp_mutex_locked(&p->mutex)) {
  __lwp_thread_dispatchenable();
  return EBUSY;
 }
 __lwp_mutex_flush(&p->mutex,EINVAL);
 __lwp_thread_dispatchenable();

 __lwp_mutex_free(p);
 return 0;
}
