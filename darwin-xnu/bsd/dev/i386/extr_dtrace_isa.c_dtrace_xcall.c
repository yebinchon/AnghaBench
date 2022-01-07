
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* arg; int f; scalar_t__ cpu; } ;
typedef TYPE_1__ xcArg_t ;
typedef scalar_t__ processorid_t ;
typedef int dtrace_xcall_t ;
typedef int cpu_t ;


 int ASYNC ;
 int CPUMASK_ALL ;
 scalar_t__ DTRACE_CPUALL ;
 int cpu_to_cpumask (int ) ;
 int mp_cpus_call (int ,int ,int ,void*) ;
 int xcRemote ;

void
dtrace_xcall(processorid_t cpu, dtrace_xcall_t f, void *arg)
{
 xcArg_t xcArg;

 xcArg.cpu = cpu;
 xcArg.f = f;
 xcArg.arg = arg;

 if (cpu == DTRACE_CPUALL) {
  mp_cpus_call (CPUMASK_ALL, ASYNC, xcRemote, (void*)&xcArg);
 }
 else {
  mp_cpus_call (cpu_to_cpumask((cpu_t)cpu), ASYNC, xcRemote, (void*)&xcArg);
 }
}
