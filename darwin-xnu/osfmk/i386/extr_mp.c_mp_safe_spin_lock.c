
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* usimple_lock_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int boolean_t ;
struct TYPE_8__ {int lock_data; } ;
struct TYPE_9__ {TYPE_1__ interlock; } ;


 int FALSE ;
 int NMIPI_panic (int ,int ) ;
 int SPINLOCK_TIMEOUT ;
 int TRUE ;
 int cpu_signal_handler (int *) ;
 int cpu_to_cpumask (int ) ;
 int current_thread () ;
 int mach_absolute_time () ;
 scalar_t__ ml_get_interrupts_enabled () ;
 scalar_t__ mp_spin_timeout (int ) ;
 int panic (char*,TYPE_2__*,uintptr_t,int ,int ,int ) ;
 int rdtsc64 () ;
 int simple_lock (TYPE_2__*) ;
 int simple_lock_try (TYPE_2__*) ;
 TYPE_2__* spinlock_timed_out ;
 int spinlock_timeout_NMI (uintptr_t) ;

boolean_t
mp_safe_spin_lock(usimple_lock_t lock)
{
 if (ml_get_interrupts_enabled()) {
  simple_lock(lock);
  return TRUE;
 } else {
  uint64_t tsc_spin_start = rdtsc64();
  while (!simple_lock_try(lock)) {
   cpu_signal_handler(((void*)0));
   if (mp_spin_timeout(tsc_spin_start)) {
    uint32_t lock_cpu;
    uintptr_t lowner = (uintptr_t)
         lock->interlock.lock_data;
    spinlock_timed_out = lock;
    lock_cpu = spinlock_timeout_NMI(lowner);
    NMIPI_panic(cpu_to_cpumask(lock_cpu), SPINLOCK_TIMEOUT);
    panic("mp_safe_spin_lock() timed out, lock: %p, owner thread: 0x%lx, current_thread: %p, owner on CPU 0x%x, time: %llu",
          lock, lowner, current_thread(), lock_cpu, mach_absolute_time());
   }
  }
  return FALSE;
 }
}
