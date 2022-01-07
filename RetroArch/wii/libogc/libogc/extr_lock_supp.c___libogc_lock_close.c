
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;
typedef scalar_t__ mutex_t ;


 scalar_t__ LWP_MutexDestroy (scalar_t__) ;

int __libogc_lock_close(int *lock)
{
 s32 ret;
 mutex_t plock;

 if(!lock || *lock==0) return -1;

 plock = (mutex_t)*lock;
 ret = LWP_MutexDestroy(plock);
 if(ret==0) *lock = 0;

 return ret;
}
