
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 scalar_t__ AVX ;
 scalar_t__ AVX512 ;
 int AVX512_XMASK ;
 int AVX_XMASK ;
 int CR4_OSXSAVE ;
 int FALSE ;
 int XCR0 ;
 int assert (int) ;
 int cpuid_set_info () ;
 scalar_t__ fpu_capability ;
 int get_cr4 () ;
 int ml_set_interrupts_enabled (int ) ;
 int xgetbv (int ) ;
 int xsetbv (int,int) ;

__attribute__((used)) static void
ucode_cpuid_set_info(void)
{
 uint64_t saved_xcr0, dest_xcr0;
 int need_xcr0_restore = 0;
 boolean_t intrs_enabled = ml_set_interrupts_enabled(FALSE);
 if (fpu_capability == AVX512 || fpu_capability == AVX) {
  saved_xcr0 = xgetbv(XCR0);
  dest_xcr0 = (fpu_capability == AVX512) ? AVX512_XMASK : AVX_XMASK;
  assert((get_cr4() & CR4_OSXSAVE) != 0);
  if (saved_xcr0 != dest_xcr0) {
   need_xcr0_restore = 1;
   xsetbv(dest_xcr0 >> 32, dest_xcr0 & 0xFFFFFFFFUL);
  }
 }

 cpuid_set_info();

 if (need_xcr0_restore) {
  xsetbv(saved_xcr0 >> 32, saved_xcr0 & 0xFFFFFFFFUL);
 }

 ml_set_interrupts_enabled(intrs_enabled);
}
