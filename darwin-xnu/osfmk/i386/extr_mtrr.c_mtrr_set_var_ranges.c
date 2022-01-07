
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; int base; } ;
typedef TYPE_1__ mtrr_var_range_t ;


 int MSR_IA32_MTRR_PHYSBASE (int) ;
 int MSR_IA32_MTRR_PHYSMASK (int) ;
 int wrmsr64 (int ,int ) ;

__attribute__((used)) static void
mtrr_set_var_ranges(const mtrr_var_range_t * range, int count)
{
 int i;

 for (i = 0; i < count; i++) {
  wrmsr64(MSR_IA32_MTRR_PHYSBASE(i), range[i].base);
  wrmsr64(MSR_IA32_MTRR_PHYSMASK(i), range[i].mask);
 }
}
