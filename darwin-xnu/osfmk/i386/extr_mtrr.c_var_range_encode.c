
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int base; int mask; } ;
typedef TYPE_1__ mtrr_var_range_t ;
typedef int addr64_t ;


 int IA32_MTRR_PHYMASK_VALID ;
 int IA32_MTRR_PHYSBASE_MASK ;
 scalar_t__ IA32_MTRR_PHYSBASE_TYPE ;
 int LEN_TO_MASK (int ) ;

__attribute__((used)) static void
var_range_encode(mtrr_var_range_t * range, addr64_t address,
   uint64_t length, uint32_t type, int valid)
{
 range->base = (address & IA32_MTRR_PHYSBASE_MASK) |
        (type & (uint32_t)IA32_MTRR_PHYSBASE_TYPE);

 range->mask = LEN_TO_MASK(length) |
        (valid ? IA32_MTRR_PHYMASK_VALID : 0);
}
