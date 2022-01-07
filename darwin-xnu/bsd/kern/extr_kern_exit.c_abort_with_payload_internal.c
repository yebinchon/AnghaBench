
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* proc_t ;
typedef scalar_t__ os_reason_t ;
typedef int mach_exception_code_t ;
typedef int kern_return_t ;
struct TYPE_4__ {int p_pid; int p_user_faults; } ;


 int BSDDBG_CODE (int ,int ) ;
 int BSD_PROC_EXITREASON_CREATE ;
 int DBG_BSD_PROC ;
 int DBG_FUNC_NONE ;
 int EBUSY ;
 int EINVAL ;
 int ENOTSUP ;
 int EQFULL ;
 int EXC_GUARD_ENCODE_FLAVOR (int ,int ) ;
 int EXC_GUARD_ENCODE_TARGET (int ,int) ;
 int EXC_GUARD_ENCODE_TYPE (int ,int ) ;
 int GUARD_TYPE_USER ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int,int,int ,int ) ;




 int OS_REASON_FLAG_ABORT ;
 int OS_REASON_IFLAG_USER_FAULT ;
 scalar_t__ OS_REASON_NULL ;
 int OS_REASON_TOTAL_USER_FAULTS_PER_PROC ;
 int SIGABRT ;
 scalar_t__ atomic_compare_exchange_strong_explicit (int *,int*,int,int ,int ) ;
 int atomic_load_explicit (int *,int ) ;
 scalar_t__ build_userspace_exit_reason (int,int,int ,int,int ,int) ;
 int current_thread () ;
 int memory_order_relaxed ;
 int os_reason_free (scalar_t__) ;
 int psignal_try_thread_with_reason (TYPE_1__*,int ,int ,scalar_t__) ;
 int task_violated_guard (int ,int,scalar_t__) ;

__attribute__((used)) static int
abort_with_payload_internal(proc_t p,
  uint32_t reason_namespace, uint64_t reason_code,
  user_addr_t payload, uint32_t payload_size,
  user_addr_t reason_string, uint64_t reason_flags,
  uint32_t internal_flags)
{
 os_reason_t exit_reason = OS_REASON_NULL;
 kern_return_t kr = 128;

 if (internal_flags & OS_REASON_IFLAG_USER_FAULT) {
  uint32_t old_value = atomic_load_explicit(&p->p_user_faults,
    memory_order_relaxed);
  for (;;) {
   if (old_value >= OS_REASON_TOTAL_USER_FAULTS_PER_PROC) {
    return EQFULL;
   }

   if (atomic_compare_exchange_strong_explicit(&p->p_user_faults,
     &old_value, old_value + 1, memory_order_relaxed,
     memory_order_relaxed)) {
    break;
   }
  }
 }

 KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_PROC, BSD_PROC_EXITREASON_CREATE) | DBG_FUNC_NONE,
     p->p_pid, reason_namespace,
     reason_code, 0, 0);

 exit_reason = build_userspace_exit_reason(reason_namespace, reason_code,
   payload, payload_size, reason_string, reason_flags | OS_REASON_FLAG_ABORT);

 if (internal_flags & OS_REASON_IFLAG_USER_FAULT) {
  mach_exception_code_t code = 0;

  EXC_GUARD_ENCODE_TYPE(code, GUARD_TYPE_USER);
  EXC_GUARD_ENCODE_FLAVOR(code, 0);
  EXC_GUARD_ENCODE_TARGET(code, reason_namespace);

  if (exit_reason == OS_REASON_NULL) {
   kr = 129;
  } else {
   kr = task_violated_guard(code, reason_code, exit_reason);
  }
  os_reason_free(exit_reason);
 } else {




  psignal_try_thread_with_reason(p, current_thread(), SIGABRT, exit_reason);
 }

 switch (kr) {
 case 128:
  return 0;
 case 130:
  return ENOTSUP;
 case 131:
  return EINVAL;
 case 129:
 default:
  return EBUSY;
 }
}
