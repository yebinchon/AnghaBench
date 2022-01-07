
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
typedef int mutex_t ;
struct TYPE_3__ {int mutex; } ;
typedef TYPE_1__ mutex_st ;


 TYPE_1__* __lwp_mutex_open (int ) ;
 int __lwp_mutex_surrender (int *) ;
 int __lwp_thread_dispatchenable () ;

s32 LWP_MutexUnlock(mutex_t mutex)
{
 u32 ret;
 mutex_st *lock;

 lock = __lwp_mutex_open(mutex);
 if(!lock) return -1;

 ret = __lwp_mutex_surrender(&lock->mutex);
 __lwp_thread_dispatchenable();

 return ret;
}
