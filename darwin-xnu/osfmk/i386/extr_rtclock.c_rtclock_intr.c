
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int x86_saved_state_t ;
struct TYPE_6__ {int cs; int rip; } ;
struct TYPE_7__ {TYPE_1__ isf; } ;
typedef TYPE_2__ x86_saved_state64_t ;
struct TYPE_8__ {int cs; int eip; } ;
typedef TYPE_3__ x86_saved_state32_t ;
typedef int uint64_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int assert (int) ;
 scalar_t__ get_preemption_level () ;
 scalar_t__ is_saved_state64 (int *) ;
 int ml_get_interrupts_enabled () ;
 TYPE_3__* saved_state32 (int *) ;
 TYPE_2__* saved_state64 (int *) ;
 int timer_intr (scalar_t__,int ) ;

void
rtclock_intr(
 x86_saved_state_t *tregs)
{
        uint64_t rip;
 boolean_t user_mode = FALSE;

 assert(get_preemption_level() > 0);
 assert(!ml_get_interrupts_enabled());

 if (is_saved_state64(tregs) == TRUE) {
         x86_saved_state64_t *regs;

  regs = saved_state64(tregs);

  if (regs->isf.cs & 0x03)
   user_mode = TRUE;
  rip = regs->isf.rip;
 } else {
         x86_saved_state32_t *regs;

  regs = saved_state32(tregs);

  if (regs->cs & 0x03)
          user_mode = TRUE;
  rip = regs->eip;
 }


 timer_intr(user_mode, rip);
}
