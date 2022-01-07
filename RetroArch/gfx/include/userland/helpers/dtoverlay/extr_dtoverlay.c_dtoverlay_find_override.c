
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int dtoverlay_debug (char*,...) ;
 char* fdt_getprop (int ,int,char const*,int*) ;
 int fdt_path_offset (int ,char*) ;

const char *dtoverlay_find_override(DTBLOB_T *dtb, const char *override_name,
                                    int *data_len)
{
   int overrides_off;
   const char *data;
   int len;


   overrides_off = fdt_path_offset(dtb->fdt, "/__overrides__");

   if (overrides_off < 0)
   {
      dtoverlay_debug("/__overrides__ node not found");
      *data_len = overrides_off;
      return ((void*)0);
   }


   data = fdt_getprop(dtb->fdt, overrides_off, override_name, &len);
   *data_len = len;
   if (data)
      dtoverlay_debug("Found override %s", override_name);
   else
      dtoverlay_debug("/__overrides__ has no %s property", override_name);

   return data;
}
