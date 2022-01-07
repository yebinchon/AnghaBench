
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pmap_paddr_t ;
struct TYPE_5__ {int len; int addr; } ;
typedef TYPE_1__ pmap_io_range_t ;
struct TYPE_6__ {unsigned int wimg; } ;


 int PAGE_SIZE ;
 unsigned int VM_WIMG_IO ;
 int assert (int) ;
 int cmp_io_rgns (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* io_attr_table ;
 int num_io_rgns ;

__attribute__((used)) static unsigned int
pmap_find_io_attr(pmap_paddr_t paddr)
{
 pmap_io_range_t find_range = {.addr = paddr, .len = PAGE_SIZE};
 unsigned int begin = 0, end = num_io_rgns - 1;
 assert(num_io_rgns > 0);

 for (;;) {
  unsigned int middle = (begin + end) / 2;
  int cmp = cmp_io_rgns(&find_range, &io_attr_table[middle]);
  if (cmp == 0)
   return io_attr_table[middle].wimg;
  else if (begin == end)
   break;
  else if (cmp > 0)
   begin = middle + 1;
  else
   end = middle;
 };

 return (VM_WIMG_IO);
}
