
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int mutex_t ;


 int LWP_THREADQ_NOTIMEOUT ;
 int TRUE ;
 int __lwp_mutex_locksupp (int ,int ,int ) ;

s32 LWP_MutexLock(mutex_t mutex)
{
 return __lwp_mutex_locksupp(mutex,LWP_THREADQ_NOTIMEOUT,TRUE);
}
