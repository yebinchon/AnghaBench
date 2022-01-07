
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef scalar_t__ mach_call_t ;
typedef int dtrace_id_t ;
struct TYPE_4__ {scalar_t__ mach_trap_function; } ;
struct TYPE_3__ {scalar_t__ stsy_entry; scalar_t__ stsy_return; int stsy_underlying; } ;


 scalar_t__ DTRACE_IDNONE ;
 scalar_t__ SYSTRACE_ISENTRY (uintptr_t) ;
 int SYSTRACE_SYSNUM (uintptr_t) ;
 scalar_t__ dtrace_machtrace_syscall ;
 int dtrace_systrace_lock ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 TYPE_2__* mach_trap_table ;
 TYPE_1__* machtrace_sysent ;
 int ml_nofault_copy (int ,int ,int) ;

__attribute__((used)) static void
machtrace_disable(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)

 int sysnum = SYSTRACE_SYSNUM((uintptr_t)parg);
 int disable = (machtrace_sysent[sysnum].stsy_entry == DTRACE_IDNONE ||
   machtrace_sysent[sysnum].stsy_return == DTRACE_IDNONE);

 if (disable) {

  lck_mtx_lock(&dtrace_systrace_lock);

  if (mach_trap_table[sysnum].mach_trap_function == (mach_call_t)dtrace_machtrace_syscall) {
   ml_nofault_copy((vm_offset_t)&machtrace_sysent[sysnum].stsy_underlying, (vm_offset_t)&mach_trap_table[sysnum].mach_trap_function, sizeof(vm_offset_t));
  }
  lck_mtx_unlock(&dtrace_systrace_lock);
 }

 if (SYSTRACE_ISENTRY((uintptr_t)parg)) {
  machtrace_sysent[sysnum].stsy_entry = DTRACE_IDNONE;
 } else {
  machtrace_sysent[sysnum].stsy_return = DTRACE_IDNONE;
 }
}
