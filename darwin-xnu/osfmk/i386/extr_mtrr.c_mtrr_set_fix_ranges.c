
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtrr_fix_range {int types; } ;


 scalar_t__ MSR_IA32_MTRR_FIX16K_80000 ;
 scalar_t__ MSR_IA32_MTRR_FIX16K_A0000 ;
 scalar_t__ MSR_IA32_MTRR_FIX4K_C0000 ;
 scalar_t__ MSR_IA32_MTRR_FIX64K_00000 ;
 int wrmsr64 (scalar_t__,int ) ;

__attribute__((used)) static void
mtrr_set_fix_ranges(const struct mtrr_fix_range * range)
{
 int i;


 wrmsr64(MSR_IA32_MTRR_FIX64K_00000, range[0].types);
 wrmsr64(MSR_IA32_MTRR_FIX16K_80000, range[1].types);
 wrmsr64(MSR_IA32_MTRR_FIX16K_A0000, range[2].types);
 for (i = 0; i < 8; i++)
  wrmsr64(MSR_IA32_MTRR_FIX4K_C0000 + i, range[3 + i].types);
}
