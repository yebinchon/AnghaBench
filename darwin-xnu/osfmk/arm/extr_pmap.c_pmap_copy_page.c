
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef int addr64_t ;


 int PAGE_SIZE ;
 int bcopy_phys (int ,int ,int ) ;
 scalar_t__ ptoa (int ) ;

void
pmap_copy_page(
 ppnum_t psrc,
 ppnum_t pdst)
{
 bcopy_phys((addr64_t) (ptoa(psrc)),
       (addr64_t) (ptoa(pdst)),
       PAGE_SIZE);
}
