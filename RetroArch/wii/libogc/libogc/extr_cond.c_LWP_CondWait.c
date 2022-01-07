
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int mutex_t ;
typedef int cond_t ;


 int FALSE ;
 int LWP_THREADQ_NOTIMEOUT ;
 int __lwp_cond_waitsupp (int ,int ,int ,int ) ;

s32 LWP_CondWait(cond_t cond,mutex_t mutex)
{
 return __lwp_cond_waitsupp(cond,mutex,LWP_THREADQ_NOTIMEOUT,FALSE);
}
