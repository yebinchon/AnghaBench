
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef int pmap_paddr_t ;


 int PAGE_SIZE ;
 scalar_t__ PHYSMAP_PTOV (int ) ;
 int i386_ptob (int ) ;

void fillPage(ppnum_t pa, unsigned int fill)
{
 pmap_paddr_t src;
 int i;
 int cnt = PAGE_SIZE / sizeof(unsigned int);
 unsigned int *addr;

 src = i386_ptob(pa);
 for (i = 0, addr = (unsigned int *)PHYSMAP_PTOV(src); i < cnt; i++)
  *addr++ = fill;
}
