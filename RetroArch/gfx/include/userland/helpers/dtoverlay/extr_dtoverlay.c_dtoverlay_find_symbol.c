
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int FDT_ERR_NOTFOUND ;
 int dtoverlay_error (char*) ;
 char* dtoverlay_get_alias (TYPE_1__*,char const*) ;
 char* fdt_getprop (int ,int,char const*,int*) ;
 int fdt_path_offset (int ,char*) ;
 int fdt_path_offset_namelen (int ,char const*,int) ;
 int strlen (char const*) ;

int dtoverlay_find_symbol(DTBLOB_T *dtb, const char *symbol_name)
{
   int symbols_off, path_len;
   const char *node_path;

   node_path = dtoverlay_get_alias(dtb, symbol_name);

   if (node_path)
   {
      path_len = strlen(node_path);
   }
   else
   {
      symbols_off = fdt_path_offset(dtb->fdt, "/__symbols__");

      if (symbols_off < 0)
      {
         dtoverlay_error("No symbols found");
         return -FDT_ERR_NOTFOUND;
      }

      node_path = fdt_getprop(dtb->fdt, symbols_off, symbol_name, &path_len);
      if (path_len < 0)
         return -FDT_ERR_NOTFOUND;
   }
   return fdt_path_offset_namelen(dtb->fdt, node_path, path_len);
}
