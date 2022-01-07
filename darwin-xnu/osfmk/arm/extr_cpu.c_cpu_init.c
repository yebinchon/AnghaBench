
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ timer_cnt_wake; scalar_t__ ipi_cnt_wake; scalar_t__ irq_ex_cnt_wake; } ;
struct TYPE_9__ {int deadline; int queue; } ;
struct TYPE_12__ {scalar_t__ cpu_type; int cpu_sleep_token_last; int cpu_sleep_token; int cpu_running; TYPE_3__ cpu_stat; int cpu_threadtype; int cpu_subtype; TYPE_1__ rtclock_timer; } ;
typedef TYPE_4__ cpu_data_t ;
struct TYPE_10__ {int arm_arch; int arm_implementor; } ;
struct TYPE_13__ {TYPE_2__ arm_info; } ;
typedef TYPE_5__ arm_cpu_info_t ;


 TYPE_4__ BootCpuData ;
 int CPU_SUBTYPE_ARM_ALL ;
 int CPU_SUBTYPE_ARM_V4T ;
 int CPU_SUBTYPE_ARM_V5TEJ ;
 int CPU_SUBTYPE_ARM_V6 ;
 int CPU_SUBTYPE_ARM_V7 ;
 int CPU_SUBTYPE_ARM_V7F ;
 int CPU_SUBTYPE_ARM_V7K ;
 int CPU_SUBTYPE_ARM_V7S ;
 int CPU_SUBTYPE_ARM_XSCALE ;
 int CPU_THREADTYPE_NONE ;
 scalar_t__ CPU_TYPE_ARM ;
 int CPU_VID_INTEL ;
 int EndOfAllTime ;
 int TRUE ;
 TYPE_5__* cpuid_info () ;
 int do_cacheid () ;
 int do_cpuid () ;
 int do_debugid () ;
 int do_mvfpid () ;
 TYPE_4__* getCpuDatap () ;
 int pmap_cpu_data_init () ;
 int timer_call_queue_init (int *) ;

void
cpu_init(void)
{
 cpu_data_t *cdp = getCpuDatap();
 arm_cpu_info_t *cpu_info_p;

 if (cdp->cpu_type != CPU_TYPE_ARM) {

  cdp->cpu_type = CPU_TYPE_ARM;

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
  case 136:
  case 135:
   cdp->cpu_subtype = CPU_SUBTYPE_ARM_V4T;
   break;
  case 134:
  case 133:
   if (cpu_info_p->arm_info.arm_implementor == CPU_VID_INTEL)
    cdp->cpu_subtype = CPU_SUBTYPE_ARM_XSCALE;
   else
    cdp->cpu_subtype = CPU_SUBTYPE_ARM_V5TEJ;
   break;
  case 132:
   cdp->cpu_subtype = CPU_SUBTYPE_ARM_V6;
   break;
  case 131:
   cdp->cpu_subtype = CPU_SUBTYPE_ARM_V7;
   break;
  case 130:
   cdp->cpu_subtype = CPU_SUBTYPE_ARM_V7F;
   break;
  case 128:
   cdp->cpu_subtype = CPU_SUBTYPE_ARM_V7S;
   break;
  case 129:
   cdp->cpu_subtype = CPU_SUBTYPE_ARM_V7K;
   break;
  default:
   cdp->cpu_subtype = CPU_SUBTYPE_ARM_ALL;
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
