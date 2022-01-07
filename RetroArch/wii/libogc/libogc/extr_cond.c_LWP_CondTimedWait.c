
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec {int dummy; } ;
typedef int s32 ;
typedef int mutex_t ;
typedef int cond_t ;


 int FALSE ;
 int LWP_THREADQ_NOTIMEOUT ;
 int __lwp_cond_waitsupp (int ,int ,int ,int) ;
 int __lwp_wd_calc_ticks (struct timespec const*) ;

s32 LWP_CondTimedWait(cond_t cond,mutex_t mutex,const struct timespec *abstime)
{
 u64 timeout = LWP_THREADQ_NOTIMEOUT;
 bool timedout = FALSE;

 if(abstime) timeout = __lwp_wd_calc_ticks(abstime);
 return __lwp_cond_waitsupp(cond,mutex,timeout,timedout);
}
