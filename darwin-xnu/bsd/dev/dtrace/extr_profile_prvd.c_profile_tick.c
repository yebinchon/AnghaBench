
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int pc; } ;
typedef TYPE_2__ x86_saved_state_t ;
struct TYPE_14__ {int rip; } ;
struct TYPE_16__ {int pc; TYPE_1__ isf; } ;
typedef TYPE_3__ x86_saved_state64_t ;
struct TYPE_17__ {int eip; } ;
typedef TYPE_4__ x86_saved_state32_t ;
struct TYPE_18__ {int prof_id; } ;
typedef TYPE_5__ profile_probe_t ;
typedef TYPE_2__ arm_saved_state_t ;


 int VALID ;
 int current_thread () ;
 int dtrace_probe (int ,int,int,int ,int ,int ) ;
 TYPE_2__* find_kern_regs (int ) ;
 scalar_t__ find_user_regs (int ) ;
 int get_saved_state_pc (TYPE_2__*) ;
 scalar_t__ is_saved_state64 (TYPE_2__*) ;
 int pal_register_cache_state (int ,int ) ;
 TYPE_4__* saved_state32 (TYPE_2__*) ;
 TYPE_3__* saved_state64 (TYPE_2__*) ;

__attribute__((used)) static void
profile_tick(void *arg)
{
 profile_probe_t *prof = arg;


 x86_saved_state_t *kern_regs = find_kern_regs(current_thread());

 if (((void*)0) != kern_regs) {

  dtrace_probe(prof->prof_id, saved_state64(kern_regs)->isf.rip, 0x0, 0, 0, 0);
 } else {
  pal_register_cache_state(current_thread(), VALID);

  x86_saved_state_t *tagged_regs = (x86_saved_state_t *)find_user_regs(current_thread());

  if (((void*)0) == tagged_regs) {

   dtrace_probe(prof->prof_id, 0xcafebabe,
       0x0, 0, 0, 0);
  } else if (is_saved_state64(tagged_regs)) {
   x86_saved_state64_t *regs = saved_state64(tagged_regs);

   dtrace_probe(prof->prof_id, 0x0, regs->isf.rip, 0, 0, 0);
  } else {
   x86_saved_state32_t *regs = saved_state32(tagged_regs);

   dtrace_probe(prof->prof_id, 0x0, regs->eip, 0, 0, 0);
  }
 }
}
