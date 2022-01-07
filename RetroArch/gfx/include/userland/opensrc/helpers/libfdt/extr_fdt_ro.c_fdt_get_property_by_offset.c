
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int len; } ;


 int _fdt_check_prop_offset (void const*,int) ;
 struct fdt_property* _fdt_offset_ptr (void const*,int) ;
 int fdt32_to_cpu (int ) ;

const struct fdt_property *fdt_get_property_by_offset(const void *fdt,
            int offset,
            int *lenp)
{
 int err;
 const struct fdt_property *prop;

 if ((err = _fdt_check_prop_offset(fdt, offset)) < 0) {
  if (lenp)
   *lenp = err;
  return ((void*)0);
 }

 prop = _fdt_offset_ptr(fdt, offset);

 if (lenp)
  *lenp = fdt32_to_cpu(prop->len);

 return prop;
}
