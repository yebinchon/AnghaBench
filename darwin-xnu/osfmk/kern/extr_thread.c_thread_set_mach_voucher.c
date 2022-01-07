
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct thread_group {int dummy; } ;
typedef int * ledger_t ;
typedef int kern_return_t ;
typedef scalar_t__ ipc_voucher_t ;
struct TYPE_9__ {scalar_t__ ith_voucher_name; scalar_t__ ith_voucher; scalar_t__ started; } ;


 int DBG_FUNC_NONE ;
 int DBG_MACH_IPC ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,uintptr_t,uintptr_t,int ,int,int ) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int MACHDBG_CODE (int ,int ) ;
 scalar_t__ MACH_PORT_NULL ;
 int MACH_THREAD_SET_VOUCHER ;
 TYPE_1__* THREAD_NULL ;
 int VM_KERNEL_ADDRPERM (uintptr_t) ;
 int bank_get_bank_ledger_and_thread_group (scalar_t__,int **,struct thread_group**) ;
 int bank_swap_thread_bank_ledger (TYPE_1__*,int *) ;
 TYPE_1__* current_thread () ;
 int ipc_voucher_reference (scalar_t__) ;
 int ipc_voucher_release (scalar_t__) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;
 scalar_t__ thread_tid (TYPE_1__*) ;

kern_return_t
thread_set_mach_voucher(
 thread_t thread,
 ipc_voucher_t voucher)
{
 ipc_voucher_t old_voucher;
 ledger_t bankledger = ((void*)0);
 struct thread_group *banktg = ((void*)0);

 if (THREAD_NULL == thread)
  return KERN_INVALID_ARGUMENT;

 if (thread != current_thread() && thread->started)
  return KERN_INVALID_ARGUMENT;

 ipc_voucher_reference(voucher);
 bank_get_bank_ledger_and_thread_group(voucher, &bankledger, &banktg);

 thread_mtx_lock(thread);
 old_voucher = thread->ith_voucher;
 thread->ith_voucher = voucher;
 thread->ith_voucher_name = MACH_PORT_NULL;
 thread_mtx_unlock(thread);

 bank_swap_thread_bank_ledger(thread, bankledger);

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
      MACHDBG_CODE(DBG_MACH_IPC,MACH_THREAD_SET_VOUCHER) | DBG_FUNC_NONE,
      (uintptr_t)thread_tid(thread),
      (uintptr_t)MACH_PORT_NULL,
      VM_KERNEL_ADDRPERM((uintptr_t)voucher),
      3, 0);

 ipc_voucher_release(old_voucher);

 return KERN_SUCCESS;
}
