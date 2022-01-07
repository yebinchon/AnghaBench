
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;


struct TYPE_19__ {scalar_t__* r; } ;
typedef TYPE_2__ x86_saved_state_t ;
typedef TYPE_3__* uthread_t ;
typedef int uint64_t ;
typedef int syscall_arg_t ;
struct mach_call_args {int dummy; } ;
struct TYPE_21__ {int p_lock; } ;
typedef TYPE_4__ proc_t ;
struct TYPE_22__ {int stsy_return; scalar_t__* stsy_underlying; int stsy_entry; } ;
typedef TYPE_5__ machtrace_sysent_t ;
typedef scalar_t__ (* mach_call_t ) (struct mach_call_args*) ;
typedef scalar_t__ kern_return_t ;
typedef int dtrace_id_t ;
typedef TYPE_2__ arm_saved_state_t ;
struct TYPE_24__ {int rax; scalar_t__* x; } ;
struct TYPE_23__ {scalar_t__ t_dtrace_stop; TYPE_1__* t_lwp; } ;
struct TYPE_20__ {void* t_dtrace_syscall_args; } ;
struct TYPE_18__ {int lwp_nostop; } ;
struct TYPE_17__ {int eax; scalar_t__* r; } ;


 size_t ARM64_SYSCALL_CODE_REG_NUM ;
 int ASSERT (int) ;
 int DTRACE_IDNONE ;
 int PR_REQUESTED ;
 int SYSCALL_NUMBER_MASK ;
 int VALID ;
 int current_thread () ;
 TYPE_8__* curthread ;
 scalar_t__ find_user_regs (int ) ;
 int get_bsdthread_info (int ) ;
 scalar_t__ is_saved_state32 (TYPE_2__*) ;
 scalar_t__ is_saved_state64 (TYPE_2__*) ;
 int machtrace_probe (int ,int ,int ,int ,int ,int ) ;
 TYPE_5__* machtrace_sysent ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int pal_register_cache_state (int ,int ) ;
 TYPE_11__* saved_state32 (TYPE_2__*) ;
 TYPE_9__* saved_state64 (TYPE_2__*) ;
 int stop (int ,int ) ;
 int stub1 (int ,int ,int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ,int ,int ,int ) ;
 TYPE_4__* ttoproc (TYPE_8__*) ;

__attribute__((used)) static kern_return_t
dtrace_machtrace_syscall(struct mach_call_args *args)
{
 int code;

 machtrace_sysent_t *sy;
 dtrace_id_t id;
 kern_return_t rval;



 syscall_arg_t *ip = (syscall_arg_t *)args;
 mach_call_t mach_call;


 {
  pal_register_cache_state(current_thread(), VALID);
  x86_saved_state_t *tagged_regs = (x86_saved_state_t *)find_user_regs(current_thread());

  if (is_saved_state64(tagged_regs)) {
   code = saved_state64(tagged_regs)->rax & SYSCALL_NUMBER_MASK;
  } else {
   code = -saved_state32(tagged_regs)->eax;
  }
 }
 sy = &machtrace_sysent[code];

 if ((id = sy->stsy_entry) != DTRACE_IDNONE) {
  uthread_t uthread = (uthread_t)get_bsdthread_info(current_thread());

  if (uthread)
   uthread->t_dtrace_syscall_args = (void *)ip;

  (*machtrace_probe)(id, *ip, *(ip+1), *(ip+2), *(ip+3), *(ip+4));

  if (uthread)
   uthread->t_dtrace_syscall_args = (void *)0;
 }
 mach_call = (mach_call_t)(*sy->stsy_underlying);
 rval = mach_call(args);

 if ((id = sy->stsy_return) != DTRACE_IDNONE)
  (*machtrace_probe)(id, (uint64_t)rval, 0, 0, 0, 0);

 return (rval);
}
