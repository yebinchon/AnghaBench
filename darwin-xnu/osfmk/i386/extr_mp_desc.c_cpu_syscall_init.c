
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int cpu_data_t ;
struct TYPE_3__ {int cdi_sstku; } ;
struct TYPE_4__ {TYPE_1__ cpu_desc_index; } ;


 int DBLMAP (uintptr_t) ;
 int EFL_DF ;
 int EFL_IF ;
 int EFL_NT ;
 int EFL_TF ;
 scalar_t__ KERNEL64_CS ;
 int MSR_IA32_EFER ;
 int MSR_IA32_EFER_SCE ;
 int MSR_IA32_FMASK ;
 int MSR_IA32_LSTAR ;
 int MSR_IA32_STAR ;
 int MSR_IA32_SYSENTER_CS ;
 int MSR_IA32_SYSENTER_EIP ;
 int MSR_IA32_SYSENTER_ESP ;
 int SYSENTER_CS ;
 scalar_t__ USER_CS ;
 TYPE_2__* current_cpu_datap () ;
 scalar_t__ hi64_syscall ;
 scalar_t__ hi64_sysenter ;
 int mt_cpu_up (int *) ;
 int rdmsr64 (int ) ;
 int wrmsr64 (int ,int) ;

void
cpu_syscall_init(cpu_data_t *cdp)
{



#pragma unused(cdp)

 wrmsr64(MSR_IA32_SYSENTER_CS, SYSENTER_CS);
 wrmsr64(MSR_IA32_SYSENTER_EIP, DBLMAP((uintptr_t) hi64_sysenter));
 wrmsr64(MSR_IA32_SYSENTER_ESP, current_cpu_datap()->cpu_desc_index.cdi_sstku);

 wrmsr64(MSR_IA32_EFER, rdmsr64(MSR_IA32_EFER) | MSR_IA32_EFER_SCE);






 wrmsr64(MSR_IA32_LSTAR, DBLMAP((uintptr_t) hi64_syscall));
 wrmsr64(MSR_IA32_STAR, (((uint64_t)USER_CS) << 48) | (((uint64_t)KERNEL64_CS) << 32));







 wrmsr64(MSR_IA32_FMASK, EFL_DF|EFL_IF|EFL_TF|EFL_NT);

}
