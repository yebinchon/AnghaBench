
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int max_phandle; int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int FIXUP_RELATIVE ;
 int dtoverlay_apply_fixups (TYPE_1__*,char const*,int ,int ) ;
 int dtoverlay_apply_fixups_node (TYPE_1__*,int,int ,int ) ;
 int dtoverlay_error (char*) ;
 int dtoverlay_phandle_relocate (TYPE_1__*,int,char*,int ) ;
 char* fdt_getprop (int ,int,char*,int*) ;
 int fdt_next_node (int ,int,int *) ;
 int fdt_path_offset (int ,char*) ;
 int phandle_debug (char*,int ,int ) ;

__attribute__((used)) static int dtoverlay_resolve_phandles(DTBLOB_T *base_dtb, DTBLOB_T *overlay_dtb)
{
   int local_fixups_off;
   int node_off;
   int err = 0;



   for (node_off = 0;
        node_off >= 0;
        node_off = fdt_next_node(overlay_dtb->fdt, node_off, ((void*)0)))
   {
      dtoverlay_phandle_relocate(overlay_dtb, node_off, "phandle",
                                 base_dtb->max_phandle);
      dtoverlay_phandle_relocate(overlay_dtb, node_off, "linux,phandle",
                                 base_dtb->max_phandle);
   }

   local_fixups_off = fdt_path_offset(overlay_dtb->fdt, "/__local_fixups__");
   if (local_fixups_off >= 0)
   {
      const char *fixups_stringlist;





      fixups_stringlist =
         fdt_getprop(overlay_dtb->fdt, local_fixups_off, "fixup", &err);
      if (fixups_stringlist)
      {

         err = dtoverlay_apply_fixups(overlay_dtb, fixups_stringlist,
                                      base_dtb->max_phandle, FIXUP_RELATIVE);
      }
      else
      {
          err = dtoverlay_apply_fixups_node(overlay_dtb, local_fixups_off,
                                            0, base_dtb->max_phandle);
      }
      if (err < 0)
      {
         dtoverlay_error("error applying local fixups");
         return err;
      }
   }

   overlay_dtb->max_phandle += base_dtb->max_phandle;
   phandle_debug("  +overlay max phandle +%d -> %d", base_dtb->max_phandle, overlay_dtb->max_phandle);

   return err;
}
