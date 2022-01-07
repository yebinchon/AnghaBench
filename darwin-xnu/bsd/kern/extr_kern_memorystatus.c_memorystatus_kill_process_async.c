
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int pid_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ kMemorystatusKilledFCThrashing ;
 scalar_t__ kMemorystatusKilledVMCompressorSpaceShortage ;
 scalar_t__ kMemorystatusKilledVMCompressorThrashing ;
 scalar_t__ kMemorystatusKilledVMPageShortage ;
 scalar_t__ kMemorystatusKilledZoneMapExhaustion ;
 scalar_t__ kill_under_pressure_cause ;
 int memorystatus_thread_wake () ;

__attribute__((used)) static boolean_t
memorystatus_kill_process_async(pid_t victim_pid, uint32_t cause) {






 if ((victim_pid != -1) ||
   (cause != kMemorystatusKilledVMPageShortage &&
   cause != kMemorystatusKilledVMCompressorThrashing &&
   cause != kMemorystatusKilledVMCompressorSpaceShortage &&
   cause != kMemorystatusKilledFCThrashing &&
   cause != kMemorystatusKilledZoneMapExhaustion)) {
  return FALSE;
 }

 kill_under_pressure_cause = cause;
 memorystatus_thread_wake();
 return TRUE;
}
