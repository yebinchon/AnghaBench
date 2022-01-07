
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int AP_RONA ;
 int arm_vm_page_granular_prot (int ,unsigned long,int ,int ,int ,int ,int) ;

__attribute__((used)) static inline void
arm_vm_page_granular_ROX(vm_offset_t start, unsigned long size, bool force_page_granule)
{
 arm_vm_page_granular_prot(start, size, 0, 0, AP_RONA, 0, force_page_granule);
}
