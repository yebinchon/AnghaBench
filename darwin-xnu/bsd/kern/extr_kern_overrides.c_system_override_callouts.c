
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int boolean_t ;
struct TYPE_2__ {int p_pid; } ;


 int BSDDBG_CODE (int ,int ) ;
 int BSD_MEMSTAT_FAST_JETSAM ;
 int DBG_BSD_MEMSTAT ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DBG_MACH_SCHED ;
 int DBG_THROTTLE ;
 int FSDBG_CODE (int ,int ) ;
 int IO_THROTTLE_DISABLE ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int ,int ,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_CPU_THROTTLE_DISABLE ;



 TYPE_1__* current_proc () ;
 int memorystatus_fast_jetsam_override (int ) ;
 int panic (char*,int) ;
 int sys_override_cpu_throttle (int ) ;
 int sys_override_io_throttle (int ) ;

__attribute__((used)) static void
system_override_callouts(uint64_t flags, boolean_t enable_override)
{
 switch (flags) {
  case 128:
   if (enable_override) {
    KERNEL_DEBUG_CONSTANT(FSDBG_CODE(DBG_THROTTLE, IO_THROTTLE_DISABLE) | DBG_FUNC_START,
     current_proc()->p_pid, 0, 0, 0, 0);
   } else {
    KERNEL_DEBUG_CONSTANT(FSDBG_CODE(DBG_THROTTLE, IO_THROTTLE_DISABLE) | DBG_FUNC_END,
     current_proc()->p_pid, 0, 0, 0, 0);
   }
   sys_override_io_throttle(enable_override);
   break;

  case 130:
   if (enable_override) {
    KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SCHED, MACH_CPU_THROTTLE_DISABLE) | DBG_FUNC_START,
     current_proc()->p_pid, 0, 0, 0, 0);
   } else {
    KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SCHED, MACH_CPU_THROTTLE_DISABLE) | DBG_FUNC_END,
     current_proc()->p_pid, 0, 0, 0, 0);
   }
   sys_override_cpu_throttle(enable_override);
   break;

  case 129:
   if (enable_override) {
    KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_FAST_JETSAM) | DBG_FUNC_START,
     current_proc()->p_pid, 0, 0, 0, 0);
   } else {
    KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_MEMSTAT, BSD_MEMSTAT_FAST_JETSAM) | DBG_FUNC_END,
     current_proc()->p_pid, 0, 0, 0, 0);
   }



   break;

  default:
   panic("Unknown option to system_override_callouts(): %llu\n", flags);
 }
}
