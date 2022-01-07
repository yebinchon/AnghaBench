
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int dtoverlay_error (char*,char const*) ;
 int fdt_setprop (int ,int,char const*,void const*,int) ;

int dtoverlay_set_property(DTBLOB_T *dtb, int pos,
                           const char *prop_name, const void *prop, int prop_len)
{
   int err = fdt_setprop(dtb->fdt, pos, prop_name, prop, prop_len);
   if (err < 0)
      dtoverlay_error("Failed to set property '%s'", prop_name);
   return err;
}
