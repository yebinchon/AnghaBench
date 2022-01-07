
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* arg; int (* f ) (void*) ;scalar_t__ cpu; } ;
typedef TYPE_1__ xcArg_t ;
typedef scalar_t__ processorid_t ;
typedef int (* dtrace_xcall_t ) (void*) ;
struct TYPE_4__ {scalar_t__ cpu_id; } ;


 int ASSERT (int) ;
 TYPE_2__* CPU ;
 scalar_t__ DTRACE_CPUALL ;
 int TRUE ;
 int cpu_broadcast_xcall (int *,int ,int ,void*) ;
 int dt_xc_lock ;
 int dt_xc_sync ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int stub1 (void*) ;
 int xcRemote ;

void
dtrace_xcall(processorid_t cpu, dtrace_xcall_t f, void *arg)
{
#pragma unused(cpu)

 ASSERT(cpu == CPU->cpu_id || cpu == DTRACE_CPUALL);

 (*f)(arg);
 return;

}
