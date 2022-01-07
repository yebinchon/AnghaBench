
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;
typedef scalar_t__ mutex_t ;


 int FALSE ;
 scalar_t__ LWP_MUTEX_NULL ;
 scalar_t__ LWP_MutexInit (scalar_t__*,int ) ;
 int TRUE ;

int __libogc_lock_init(int *lock,int recursive)
{
 s32 ret;
 mutex_t retlck = LWP_MUTEX_NULL;

 if(!lock) return -1;

 *lock = 0;
 ret = LWP_MutexInit(&retlck,(recursive?TRUE:FALSE));
 if(ret==0) *lock = (int)retlck;

 return ret;
}
