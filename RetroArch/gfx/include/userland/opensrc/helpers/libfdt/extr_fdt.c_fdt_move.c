
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_CHECK_HEADER (void const*) ;
 int FDT_ERR_NOSPACE ;
 int fdt_totalsize (void const*) ;
 int memmove (void*,void const*,int) ;

int fdt_move(const void *fdt, void *buf, int bufsize)
{
 FDT_CHECK_HEADER(fdt);

 if (fdt_totalsize(fdt) > bufsize)
  return -FDT_ERR_NOSPACE;

 memmove(buf, fdt, fdt_totalsize(fdt));
 return 0;
}
