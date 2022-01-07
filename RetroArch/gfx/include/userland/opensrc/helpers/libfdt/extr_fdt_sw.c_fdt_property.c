
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int data; void* len; void* nameoff; void* tag; } ;


 int FDT_ERR_NOSPACE ;
 int FDT_PROP ;
 int FDT_SW_CHECK_HEADER (void*) ;
 scalar_t__ FDT_TAGALIGN (int) ;
 int _fdt_find_add_string (void*,char const*) ;
 struct fdt_property* _fdt_grab_space (void*,scalar_t__) ;
 void* cpu_to_fdt32 (int) ;
 int memcpy (int ,void const*,int) ;

int fdt_property(void *fdt, const char *name, const void *val, int len)
{
 struct fdt_property *prop;
 int nameoff;

 FDT_SW_CHECK_HEADER(fdt);

 nameoff = _fdt_find_add_string(fdt, name);
 if (nameoff == 0)
  return -FDT_ERR_NOSPACE;

 prop = _fdt_grab_space(fdt, sizeof(*prop) + FDT_TAGALIGN(len));
 if (! prop)
  return -FDT_ERR_NOSPACE;

 prop->tag = cpu_to_fdt32(FDT_PROP);
 prop->nameoff = cpu_to_fdt32(nameoff);
 prop->len = cpu_to_fdt32(len);
 memcpy(prop->data, val, len);
 return 0;
}
