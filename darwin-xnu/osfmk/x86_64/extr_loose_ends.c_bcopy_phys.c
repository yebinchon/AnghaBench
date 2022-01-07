
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int uint32_t ;
typedef scalar_t__ addr64_t ;


 int NBPG ;
 int PHYSMAP_PTOV (scalar_t__) ;
 int bcopy (int ,int ,int) ;
 int panic (char*) ;

void
bcopy_phys(
    addr64_t src64,
    addr64_t dst64,
    vm_size_t bytes)
{

 if (((((uint32_t)src64 & (NBPG-1)) + bytes) > NBPG) ||
            ((((uint32_t)dst64 & (NBPG-1)) + bytes) > NBPG) ) {
         panic("bcopy_phys alignment");
 }
 bcopy(PHYSMAP_PTOV(src64), PHYSMAP_PTOV(dst64), bytes);
}
