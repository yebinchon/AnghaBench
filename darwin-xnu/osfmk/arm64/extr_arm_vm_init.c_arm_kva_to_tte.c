
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int tt_entry_t ;


 int L1_TABLE_INDEX (int ) ;
 int L2_TABLE_INDEX (int ) ;
 int * L2_TABLE_VA (int *) ;
 int * cpu_tte ;

tt_entry_t *
arm_kva_to_tte(vm_offset_t va)
{




 tt_entry_t *tte1, *tte2;
 tte1 = cpu_tte + L1_TABLE_INDEX(va);
 tte2 = L2_TABLE_VA(tte1) + L2_TABLE_INDEX(va);

 return tte2;
}
