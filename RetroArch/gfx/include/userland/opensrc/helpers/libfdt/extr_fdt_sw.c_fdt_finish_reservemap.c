
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_add_reservemap_entry (void*,long long,long long) ;

int fdt_finish_reservemap(void *fdt)
{
 return fdt_add_reservemap_entry(fdt, 0LL, 0LL);
}
