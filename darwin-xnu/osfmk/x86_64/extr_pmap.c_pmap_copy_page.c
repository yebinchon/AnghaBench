
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef int addr64_t ;


 int PAGE_SIZE ;
 int bcopy_phys (int ,int ,int ) ;
 scalar_t__ i386_ptob (int ) ;

void
pmap_copy_page(ppnum_t src, ppnum_t dst)
{
 bcopy_phys((addr64_t)i386_ptob(src),
     (addr64_t)i386_ptob(dst),
     PAGE_SIZE);
}
