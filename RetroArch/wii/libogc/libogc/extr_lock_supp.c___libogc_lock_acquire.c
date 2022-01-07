
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mutex_t ;


 int LWP_MutexLock (scalar_t__) ;

int __libogc_lock_acquire(int *lock)
{
 mutex_t plock;

 if(!lock || *lock==0) return -1;

 plock = (mutex_t)*lock;
 return LWP_MutexLock(plock);
}
