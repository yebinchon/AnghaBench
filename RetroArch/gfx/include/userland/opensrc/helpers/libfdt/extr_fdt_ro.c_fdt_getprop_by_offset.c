
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {void const* data; int nameoff; } ;


 int fdt32_to_cpu (int ) ;
 struct fdt_property* fdt_get_property_by_offset (void const*,int,int*) ;
 char* fdt_string (void const*,int ) ;

const void *fdt_getprop_by_offset(const void *fdt, int offset,
      const char **namep, int *lenp)
{
 const struct fdt_property *prop;

 prop = fdt_get_property_by_offset(fdt, offset, lenp);
 if (!prop)
  return ((void*)0);
 if (namep)
  *namep = fdt_string(fdt, fdt32_to_cpu(prop->nameoff));
 return prop->data;
}
