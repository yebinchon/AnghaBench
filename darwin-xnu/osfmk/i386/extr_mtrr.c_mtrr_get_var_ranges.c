
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; int refcnt; void* base; } ;
typedef TYPE_1__ mtrr_var_range_t ;


 int IA32_MTRR_PHYMASK_VALID ;
 int MSR_IA32_MTRR_PHYSBASE (int) ;
 int MSR_IA32_MTRR_PHYSMASK (int) ;
 void* rdmsr64 (int ) ;

__attribute__((used)) static void
mtrr_get_var_ranges(mtrr_var_range_t * range, int count)
{
 int i;

 for (i = 0; i < count; i++) {
  range[i].base = rdmsr64(MSR_IA32_MTRR_PHYSBASE(i));
  range[i].mask = rdmsr64(MSR_IA32_MTRR_PHYSMASK(i));


  if (range[i].mask & IA32_MTRR_PHYMASK_VALID)
   range[i].refcnt = 1;
  else
   range[i].refcnt = 0;
 }
}
