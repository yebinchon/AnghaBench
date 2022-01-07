
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int EINVAL ;
 int RLIMIT_THREAD_CPULIMITS ;
 int errno ;
 int proc_rlimit_control (int,int ,void*) ;

int
proc_setthread_cpupercent(uint8_t percentage, uint32_t ms_refill)
{
 uint32_t arg = 0;


 if ((percentage >= 100) || (ms_refill & ~0xffffffU)) {
  errno = EINVAL;
  return -1;
 }

 arg = ((ms_refill << 8) | percentage);

 return (proc_rlimit_control(-1, RLIMIT_THREAD_CPULIMITS, (void *)(uintptr_t)arg));
}
