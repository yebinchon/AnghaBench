
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_paddr_t ;


 int MRS (int ,char*) ;

pmap_paddr_t get_mmu_ttb(void)
{
 pmap_paddr_t value;

 MRS(value, "TTBR0_EL1");
 return value;
}
