
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* _fdt_offset_ptr_w (void*,int) ;
 int fdt_off_dt_struct (void*) ;
 int fdt_set_size_dt_struct (void*,int) ;
 int fdt_size_dt_strings (void*) ;
 int fdt_size_dt_struct (void*) ;
 int fdt_totalsize (void*) ;

__attribute__((used)) static void *_fdt_grab_space(void *fdt, size_t len)
{
 int offset = fdt_size_dt_struct(fdt);
 int spaceleft;

 spaceleft = fdt_totalsize(fdt) - fdt_off_dt_struct(fdt)
  - fdt_size_dt_strings(fdt);

 if ((offset + len < offset) || (offset + len > spaceleft))
  return ((void*)0);

 fdt_set_size_dt_struct(fdt, offset + len);
 return _fdt_offset_ptr_w(fdt, offset);
}
