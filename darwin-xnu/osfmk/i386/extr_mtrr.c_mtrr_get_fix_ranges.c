
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* types; } ;
typedef TYPE_1__ mtrr_fix_range_t ;


 scalar_t__ MSR_IA32_MTRR_FIX16K_80000 ;
 scalar_t__ MSR_IA32_MTRR_FIX16K_A0000 ;
 scalar_t__ MSR_IA32_MTRR_FIX4K_C0000 ;
 scalar_t__ MSR_IA32_MTRR_FIX64K_00000 ;
 void* rdmsr64 (scalar_t__) ;

__attribute__((used)) static void
mtrr_get_fix_ranges(mtrr_fix_range_t * range)
{
 int i;


 range[0].types = rdmsr64(MSR_IA32_MTRR_FIX64K_00000);
 range[1].types = rdmsr64(MSR_IA32_MTRR_FIX16K_80000);
 range[2].types = rdmsr64(MSR_IA32_MTRR_FIX16K_A0000);
 for (i = 0; i < 8; i++)
  range[3 + i].types = rdmsr64(MSR_IA32_MTRR_FIX4K_C0000 + i);
}
