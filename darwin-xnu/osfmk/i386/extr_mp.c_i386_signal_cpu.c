
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ mp_sync_t ;
typedef int mp_event_t ;
struct TYPE_2__ {int cpu_signals; int cpu_running; } ;


 int DBG (char*,int,int ) ;
 int DBGLOG (int ,int,int ) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KERNEL_DEBUG (int,int,int ,int ,int ,int ) ;
 int MP_TLB_FLUSH ;
 scalar_t__ SYNC ;
 int TRACE_MP_TLB_FLUSH ;
 TYPE_1__* cpu_datap (int) ;
 int cpu_pause () ;
 int cpu_signal ;
 int i386_cpu_IPI (int) ;
 scalar_t__ i_bit (int ,int volatile*) ;
 int i_bit_set (int ,int volatile*) ;
 int machine_timeout_suspended () ;
 int rdtsc64 () ;

void
i386_signal_cpu(int cpu, mp_event_t event, mp_sync_t mode)
{
 volatile int *signals = &cpu_datap(cpu)->cpu_signals;
 uint64_t tsc_timeout;


 if (!cpu_datap(cpu)->cpu_running)
  return;

 if (event == MP_TLB_FLUSH)
         KERNEL_DEBUG(TRACE_MP_TLB_FLUSH | DBG_FUNC_START, cpu, 0, 0, 0, 0);

 DBGLOG(cpu_signal, cpu, event);

 i_bit_set(event, signals);
 i386_cpu_IPI(cpu);
 if (mode == SYNC) {
    again:
  tsc_timeout = !machine_timeout_suspended() ?
     rdtsc64() + (1000*1000*1000) :
     ~0ULL;
  while (i_bit(event, signals) && rdtsc64() < tsc_timeout) {
   cpu_pause();
  }
  if (i_bit(event, signals)) {
   DBG("i386_signal_cpu(%d, 0x%x, SYNC) timed out\n",
    cpu, event);
   goto again;
  }
 }
 if (event == MP_TLB_FLUSH)
         KERNEL_DEBUG(TRACE_MP_TLB_FLUSH | DBG_FUNC_END, cpu, 0, 0, 0, 0);
}
