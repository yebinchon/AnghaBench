
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int fdt32_t ;
struct TYPE_3__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int FDT_ERR_BADSTRUCTURE ;
 int dtoverlay_error (char*,char const*) ;
 scalar_t__ fdt32_to_cpu (int const) ;
 int * fdt_getprop (int ,int,char const*,int*) ;
 int fdt_setprop_inplace_u32 (int ,int,char const*,scalar_t__) ;
 int phandle_debug (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int dtoverlay_phandle_relocate(DTBLOB_T *dtb, int node_off,
                                      const char *prop_name,
                                      uint32_t phandle_increment)
{
   int len;
   const fdt32_t *prop_val = fdt_getprop(dtb->fdt, node_off, prop_name, &len);
   int err = 0;

   if (prop_val)
   {
      uint32_t phandle;

      if (len < 4)
      {
         dtoverlay_error("%s property too small", prop_name);
         return -FDT_ERR_BADSTRUCTURE;
      }

      phandle = fdt32_to_cpu(*prop_val) + phandle_increment;
      phandle_debug("  phandle_relocate %d->%d", fdt32_to_cpu(*prop_val), phandle);

      err = fdt_setprop_inplace_u32(dtb->fdt, node_off, prop_name, phandle);
   }

   return err;
}
