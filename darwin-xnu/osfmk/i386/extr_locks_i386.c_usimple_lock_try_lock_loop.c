
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usimple_lock_t ;
typedef int boolean_t ;


 int cpu_pause () ;
 int handle_pending_TLB_flushes () ;
 int ml_get_interrupts_enabled () ;
 int simple_lock_try (int ) ;

void
usimple_lock_try_lock_loop(usimple_lock_t l)
{
 boolean_t istate = ml_get_interrupts_enabled();
 while (!simple_lock_try((l))) {
  if (!istate)
   handle_pending_TLB_flushes();
  cpu_pause();
 }
}
