
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 void const* fdt_getprop (int ,int,char const*,int*) ;

const void *dtoverlay_get_property(DTBLOB_T *dtb, int pos, const char *prop_name, int *prop_len)
{
   return fdt_getprop(dtb->fdt, pos, prop_name, prop_len);
}
