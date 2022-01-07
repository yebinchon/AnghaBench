
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int cpu_pause () ;
 int handle_pending_TLB_flushes () ;

__attribute__((used)) static inline void
lck_rw_lock_pause(boolean_t interrupts_enabled)
{
 if (!interrupts_enabled)
  handle_pending_TLB_flushes();
 cpu_pause();
}
