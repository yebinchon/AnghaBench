
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* usimple_lock_t ;
typedef int uint32_t ;
typedef int simple_lock_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_10__ {scalar_t__ lock_data; } ;
struct TYPE_9__ {TYPE_7__ interlock; } ;


 int DECL_PC (int ) ;
 scalar_t__ FALSE ;
 int LOCKSTAT_RECORD (int ,TYPE_1__*,int ) ;
 int LS_LCK_SPIN_LOCK_ACQUIRE ;
 int LockTimeOutTSC ;
 int OBTAIN_PC (int ) ;
 int USLDBG (int ) ;
 scalar_t__ __improbable (int) ;
 int current_thread () ;
 int enable_preemption () ;
 scalar_t__ hw_lock_to (TYPE_7__*,int ) ;
 int mach_absolute_time () ;
 scalar_t__ machine_timeout_suspended () ;
 int panic (char*,TYPE_1__*,uintptr_t,int ,int ,uintptr_t,int ) ;
 int pc ;
 int pltrace (scalar_t__) ;
 int simple_lock (int ) ;
 TYPE_1__* spinlock_timed_out ;
 int spinlock_timeout_NMI (uintptr_t) ;
 int usld_lock_post (TYPE_1__*,int ) ;
 int usld_lock_pre (TYPE_1__*,int ) ;

void
usimple_lock(
 usimple_lock_t l)
{

 DECL_PC(pc);

 OBTAIN_PC(pc);
 USLDBG(usld_lock_pre(l, pc));

 if(__improbable(hw_lock_to(&l->interlock, LockTimeOutTSC) == 0)) {
  boolean_t uslock_acquired = FALSE;
  while (machine_timeout_suspended()) {
   enable_preemption();
   if ((uslock_acquired = hw_lock_to(&l->interlock, LockTimeOutTSC)))
    break;
  }

  if (uslock_acquired == FALSE) {
   uint32_t lock_cpu;
   uintptr_t lowner = (uintptr_t)l->interlock.lock_data;
   spinlock_timed_out = l;
   lock_cpu = spinlock_timeout_NMI(lowner);
   panic("Spinlock acquisition timed out: lock=%p, lock owner thread=0x%lx, current_thread: %p, lock owner active on CPU 0x%x, current owner: 0x%lx, time: %llu",
         l, lowner, current_thread(), lock_cpu, (uintptr_t)l->interlock.lock_data, mach_absolute_time());
  }
 }




 USLDBG(usld_lock_post(l, pc));






}
