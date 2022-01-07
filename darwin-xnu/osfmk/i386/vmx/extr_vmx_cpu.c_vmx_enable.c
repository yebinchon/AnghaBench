
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CR4_VMXE ;
 int MSR_IA32_FEATCTL_LOCK ;
 int MSR_IA32_FEATCTL_VMXON ;
 int MSR_IA32_FEATURE_CONTROL ;
 int get_cr4 () ;
 int rdmsr64 (int ) ;
 int set_cr4 (int) ;
 int vmx_is_available () ;
 int wrmsr64 (int ,int) ;

__attribute__((used)) static void
vmx_enable(void)
{
 uint64_t msr_image;

 if (!vmx_is_available())
  return;





 msr_image = rdmsr64(MSR_IA32_FEATURE_CONTROL);
 if (0 == ((msr_image & MSR_IA32_FEATCTL_LOCK)))
  wrmsr64(MSR_IA32_FEATURE_CONTROL,
   (msr_image |
    MSR_IA32_FEATCTL_VMXON |
    MSR_IA32_FEATCTL_LOCK));

 set_cr4(get_cr4() | CR4_VMXE);
}
