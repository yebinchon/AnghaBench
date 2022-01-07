
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_NOTFOUND ;
 int fdt_next_node (void const*,int,int*) ;

int fdt_next_subnode(const void *fdt, int offset)
{
 int depth = 1;





 do {
  offset = fdt_next_node(fdt, offset, &depth);
  if (offset < 0 || depth < 1)
   return -FDT_ERR_NOTFOUND;
 } while (depth > 1);

 return offset;
}
