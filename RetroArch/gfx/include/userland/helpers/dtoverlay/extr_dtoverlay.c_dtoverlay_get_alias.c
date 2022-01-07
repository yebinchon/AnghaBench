
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 char* fdt_getprop (int ,int,char const*,int*) ;
 int fdt_path_offset (int ,char*) ;

const char *dtoverlay_get_alias(DTBLOB_T *dtb, const char *alias_name)
{
   int node_off;
   int prop_len;
   const char *alias;

   node_off = fdt_path_offset(dtb->fdt, "/aliases");

   alias = fdt_getprop(dtb->fdt, node_off, alias_name, &prop_len);
   if (alias && !prop_len)
       alias = "";
   return alias;
}
