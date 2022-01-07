
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;


 TYPE_1__* _fdt_mem_rsv (void const*,int) ;
 scalar_t__ fdt64_to_cpu (int ) ;

int fdt_num_mem_rsv(const void *fdt)
{
 int i = 0;

 while (fdt64_to_cpu(_fdt_mem_rsv(fdt, i)->size) != 0)
  i++;
 return i;
}
