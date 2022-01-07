
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* cpu_warm_data_t ;
struct TYPE_2__ {scalar_t__ cwd_result; int cwd_deadline; int cwd_call; } ;


 int TIMER_CALL_LOCAL ;
 int TIMER_CALL_SYS_CRITICAL ;
 int timer_call_enter (int ,int ,int) ;

__attribute__((used)) static void
_cpu_warm_setup(
  void *arg)
{
 cpu_warm_data_t cwdp = (cpu_warm_data_t)arg;

 timer_call_enter(cwdp->cwd_call, cwdp->cwd_deadline, TIMER_CALL_SYS_CRITICAL | TIMER_CALL_LOCAL);
 cwdp->cwd_result = 0;

 return;
}
