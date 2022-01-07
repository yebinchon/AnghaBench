
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int data; } ;


 int FDT_ERR_NOTFOUND ;
 int FDT_RW_CHECK_HEADER (void*) ;
 int _fdt_add_property (void*,int,char const*,int,struct fdt_property**) ;
 int _fdt_resize_property (void*,int,char const*,int,struct fdt_property**) ;
 int memcpy (int ,void const*,int) ;

int fdt_setprop(void *fdt, int nodeoffset, const char *name,
  const void *val, int len)
{
 struct fdt_property *prop;
 int err;

 FDT_RW_CHECK_HEADER(fdt);

 err = _fdt_resize_property(fdt, nodeoffset, name, len, &prop);
 if (err == -FDT_ERR_NOTFOUND)
  err = _fdt_add_property(fdt, nodeoffset, name, len, &prop);
 if (err)
  return err;

 memcpy(prop->data, val, len);
 return 0;
}
