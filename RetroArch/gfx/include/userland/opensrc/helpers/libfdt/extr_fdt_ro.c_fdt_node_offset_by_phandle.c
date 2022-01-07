
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FDT_CHECK_HEADER (void const*) ;
 int FDT_ERR_BADPHANDLE ;
 int fdt_get_phandle (void const*,int) ;
 int fdt_next_node (void const*,int,int *) ;

int fdt_node_offset_by_phandle(const void *fdt, uint32_t phandle)
{
 int offset;

 if ((phandle == 0) || (phandle == -1))
  return -FDT_ERR_BADPHANDLE;

 FDT_CHECK_HEADER(fdt);







 for (offset = fdt_next_node(fdt, -1, ((void*)0));
      offset >= 0;
      offset = fdt_next_node(fdt, offset, ((void*)0))) {
  if (fdt_get_phandle(fdt, offset) == phandle)
   return offset;
 }

 return offset;
}
