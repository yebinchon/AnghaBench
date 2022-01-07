
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int fdt_path_offset_namelen (int ,char const*,int) ;
 int strlen (char const*) ;

int dtoverlay_find_node(DTBLOB_T *dtb, const char *node_path, int path_len)
{
   if (!path_len)
      path_len = strlen(node_path);
   return fdt_path_offset_namelen(dtb->fdt, node_path, path_len);
}
