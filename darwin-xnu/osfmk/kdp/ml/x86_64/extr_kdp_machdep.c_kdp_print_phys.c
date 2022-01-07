
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DADDR2 ;
 scalar_t__ DMAP2 ;
 int invlpg (uintptr_t) ;
 int kprintf (char*,...) ;

void
kdp_print_phys(int src)
{
 unsigned int *iptr;
 int i;

 *(int *) DMAP2 = 0x63 | (src & 0xfffff000);
 invlpg((uintptr_t) DADDR2);
 iptr = (unsigned int *) DADDR2;
 for (i = 0; i < 100; i++) {
  kprintf("0x%x ", *iptr++);
  if ((i % 8) == 0)
   kprintf("\n");
 }
 kprintf("\n");
 *(int *) DMAP2 = 0;

}
