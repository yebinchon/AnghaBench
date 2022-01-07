
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int cond_t ;


 int TRUE ;
 int __lwp_cond_signalsupp (int ,int ) ;

s32 LWP_CondBroadcast(cond_t cond)
{
 return __lwp_cond_signalsupp(cond,TRUE);
}
