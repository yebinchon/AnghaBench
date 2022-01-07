
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct thread_group {int dummy; } ;
typedef scalar_t__ mach_port_name_t ;
typedef int * ledger_t ;
typedef int kern_return_t ;
typedef scalar_t__ ipc_voucher_t ;
struct TYPE_7__ {scalar_t__ ith_voucher; scalar_t__ ith_voucher_name; } ;


 int DBG_FUNC_NONE ;
 int DBG_MACH_IPC ;
 scalar_t__ IPC_VOUCHER_NULL ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,uintptr_t,uintptr_t,int ,int,int ) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_RIGHT ;
 int KERN_SUCCESS ;
 int MACHDBG_CODE (int ,int ) ;
 scalar_t__ MACH_PORT_DEAD ;
 scalar_t__ MACH_PORT_VALID (scalar_t__) ;
 int MACH_THREAD_SET_VOUCHER ;
 int VM_KERNEL_ADDRPERM (uintptr_t) ;
 int bank_get_bank_ledger_and_thread_group (scalar_t__,int **,struct thread_group**) ;
 int bank_swap_thread_bank_ledger (TYPE_1__*,int *) ;
 scalar_t__ convert_port_name_to_voucher (scalar_t__) ;
 TYPE_1__* current_thread () ;
 int ipc_voucher_release (scalar_t__) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;
 scalar_t__ thread_tid (TYPE_1__*) ;

kern_return_t
thread_set_voucher_name(mach_port_name_t voucher_name)
{
 thread_t thread = current_thread();
 ipc_voucher_t new_voucher = IPC_VOUCHER_NULL;
 ipc_voucher_t voucher;
 ledger_t bankledger = ((void*)0);
 struct thread_group *banktg = ((void*)0);

 if (MACH_PORT_DEAD == voucher_name)
  return KERN_INVALID_RIGHT;




 if (MACH_PORT_VALID(voucher_name)) {
  new_voucher = convert_port_name_to_voucher(voucher_name);
  if (IPC_VOUCHER_NULL == new_voucher)
   return KERN_INVALID_ARGUMENT;
 }
 bank_get_bank_ledger_and_thread_group(new_voucher, &bankledger, &banktg);

 thread_mtx_lock(thread);
 voucher = thread->ith_voucher;
 thread->ith_voucher_name = voucher_name;
 thread->ith_voucher = new_voucher;
 thread_mtx_unlock(thread);

 bank_swap_thread_bank_ledger(thread, bankledger);

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
      MACHDBG_CODE(DBG_MACH_IPC,MACH_THREAD_SET_VOUCHER) | DBG_FUNC_NONE,
      (uintptr_t)thread_tid(thread),
      (uintptr_t)voucher_name,
      VM_KERNEL_ADDRPERM((uintptr_t)new_voucher),
      1, 0);

 if (IPC_VOUCHER_NULL != voucher)
  ipc_voucher_release(voucher);

 return KERN_SUCCESS;
}
