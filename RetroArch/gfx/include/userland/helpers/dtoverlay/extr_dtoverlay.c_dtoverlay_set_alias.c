
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int fdt_add_subnode (int ,int ,char*) ;
 int fdt_path_offset (int ,char*) ;
 int fdt_setprop_string (int ,int,char const*,char const*) ;

int dtoverlay_set_alias(DTBLOB_T *dtb, const char *alias_name, const char *value)
{
   int node_off;

   node_off = fdt_path_offset(dtb->fdt, "/aliases");
   if (node_off < 0)
       node_off = fdt_add_subnode(dtb->fdt, 0, "aliases");

   return fdt_setprop_string(dtb->fdt, node_off, alias_name, value);
}
