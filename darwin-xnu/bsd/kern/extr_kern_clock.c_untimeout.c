
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timeout_fcn_t ;
typedef int thread_call_func_t ;


 int FALSE ;
 int thread_call_func_cancel (int ,void*,int ) ;

void
untimeout(
 timeout_fcn_t fcn,
 void *param)
{
 thread_call_func_cancel((thread_call_func_t)fcn, param, FALSE);
}
