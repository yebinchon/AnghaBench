
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int boolean_t ;


 int FALSE ;
 int LockTimeOutTSC ;
 int cpu_pause () ;
 scalar_t__ disable_serial_output ;
 scalar_t__ machine_timeout_suspended () ;
 scalar_t__ rdtsc64 () ;

__attribute__((used)) static boolean_t
mp_spin_timeout(uint64_t tsc_start)
{
 uint64_t tsc_timeout;

 cpu_pause();
 if (machine_timeout_suspended())
  return FALSE;






 tsc_timeout = disable_serial_output ? LockTimeOutTSC << 2
         : LockTimeOutTSC << 4;
 return (rdtsc64() > tsc_start + tsc_timeout);
}
