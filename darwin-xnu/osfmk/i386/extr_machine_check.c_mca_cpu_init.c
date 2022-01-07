
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CR4_MCE ;
 int IA32_MCG_CTL ;
 unsigned long long IA32_MCG_CTL_ENABLE ;
 int IA32_MCi_CTL (unsigned int) ;
 int IA32_MCi_STATUS (unsigned int) ;
 scalar_t__ TRUE ;
 int get_cr4 () ;
 scalar_t__ mca_MCA_present ;
 scalar_t__ mca_MCE_present ;
 scalar_t__ mca_control_MSR_present ;
 unsigned int mca_error_bank_count ;
 int mca_family ;
 int mca_get_availability () ;
 scalar_t__ mca_initialized ;
 int mca_lock ;
 int set_cr4 (int) ;
 int simple_lock_init (int *,int ) ;
 int wrmsr64 (int ,unsigned long long) ;

void
mca_cpu_init(void)
{
 unsigned int i;





 if (!mca_initialized) {
  mca_get_availability();
  mca_initialized = TRUE;
  simple_lock_init(&mca_lock, 0);
 }

 if (mca_MCA_present) {


  if (mca_control_MSR_present)
   wrmsr64(IA32_MCG_CTL, IA32_MCG_CTL_ENABLE);

  switch (mca_family) {
  case 0x06:

   for (i = 1; i < mca_error_bank_count; i++)
    wrmsr64(IA32_MCi_CTL(i),0xFFFFFFFFFFFFFFFFULL);


   for (i = 0; i < mca_error_bank_count; i++)
    wrmsr64(IA32_MCi_STATUS(i), 0ULL);
   break;
  case 0x0F:

   for (i = 0; i < mca_error_bank_count; i++)
    wrmsr64(IA32_MCi_CTL(i),0xFFFFFFFFFFFFFFFFULL);


   for (i = 0; i < mca_error_bank_count; i++)
    wrmsr64(IA32_MCi_STATUS(i), 0ULL);
   break;
  }
 }


 if (mca_MCE_present) {
  set_cr4(get_cr4()|CR4_MCE);
 }
}
