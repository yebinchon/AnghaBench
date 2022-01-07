
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ timer_cnt_wake; scalar_t__ ipi_cnt_wake; scalar_t__ irq_ex_cnt_wake; } ;
struct TYPE_10__ {int deadline; int queue; } ;
struct TYPE_13__ {scalar_t__ cpu_type; int cpu_sleep_token_last; int cpu_sleep_token; int cpu_running; TYPE_3__ cpu_stat; int cpu_threadtype; int cpu_subtype; TYPE_1__ rtclock_timer; } ;
typedef TYPE_4__ cpu_data_t ;
struct TYPE_11__ {int arm_arch; } ;
struct TYPE_14__ {TYPE_2__ arm_info; } ;
typedef TYPE_5__ arm_cpu_info_t ;


 TYPE_4__ BootCpuData ;

 int CPU_SUBTYPE_ARM64_V8 ;
 int CPU_THREADTYPE_NONE ;
 scalar_t__ CPU_TYPE_ARM64 ;
 int EndOfAllTime ;
 int TRUE ;
 int assert (int) ;
 TYPE_5__* cpuid_info () ;
 int do_cacheid () ;
 int do_cpuid () ;
 int do_debugid () ;
 int do_mvfpid () ;
 scalar_t__ exception_stack_pointer () ;
 TYPE_4__* getCpuDatap () ;
 int kpc_idle_exit () ;
 int mt_cpu_up (TYPE_4__*) ;
 int panic (char*) ;
 int pmap_cpu_data_init () ;
 int timer_call_queue_init (int *) ;

void
cpu_init(void)
{
 cpu_data_t *cdp = getCpuDatap();
 arm_cpu_info_t *cpu_info_p;

 assert(exception_stack_pointer() != 0);

 if (cdp->cpu_type != CPU_TYPE_ARM64) {

  cdp->cpu_type = CPU_TYPE_ARM64;

  timer_call_queue_init(&cdp->rtclock_timer.queue);
  cdp->rtclock_timer.deadline = EndOfAllTime;

  if (cdp == &BootCpuData) {
   do_cpuid();
   do_cacheid();
   do_mvfpid();
  } else {




   pmap_cpu_data_init();
  }

  do_debugid();

  cpu_info_p = cpuid_info();


  switch (cpu_info_p->arm_info.arm_arch) {
  case 128:
   cdp->cpu_subtype = CPU_SUBTYPE_ARM64_V8;
   break;
  default:


   panic("Unknown CPU subtype...");
   break;
  }

  cdp->cpu_threadtype = CPU_THREADTYPE_NONE;
 }
 cdp->cpu_stat.irq_ex_cnt_wake = 0;
 cdp->cpu_stat.ipi_cnt_wake = 0;
 cdp->cpu_stat.timer_cnt_wake = 0;
 cdp->cpu_running = TRUE;
 cdp->cpu_sleep_token_last = cdp->cpu_sleep_token;
 cdp->cpu_sleep_token = 0x0UL;






}
