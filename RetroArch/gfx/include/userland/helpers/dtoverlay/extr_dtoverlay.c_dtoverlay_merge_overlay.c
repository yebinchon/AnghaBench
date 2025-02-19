
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int fdt32_t ;
struct TYPE_6__ {int max_phandle; int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int FDT_ERR_BADSTRUCTURE ;
 int NON_FATAL (int) ;
 int dtoverlay_debug (char*,char const*,...) ;
 int dtoverlay_error (char*,...) ;
 int dtoverlay_merge_fragment (TYPE_1__*,int,TYPE_1__*,int,int ) ;
 int fdt32_to_cpu (int ) ;
 int fdt_first_subnode (int ,int ) ;
 char* fdt_get_name (int ,int,int *) ;
 void* fdt_getprop (int ,int,char*,int*) ;
 int fdt_next_subnode (int ,int) ;
 int fdt_node_offset_by_phandle (int ,int ) ;
 int fdt_path_offset_namelen (int ,char const*,int) ;
 int fdt_subnode_offset (int ,int,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

int dtoverlay_merge_overlay(DTBLOB_T *base_dtb, DTBLOB_T *overlay_dtb)
{

   int frag_off;

   for (frag_off = fdt_first_subnode(overlay_dtb->fdt, 0);
        frag_off >= 0;
        frag_off = fdt_next_subnode(overlay_dtb->fdt, frag_off))
   {
      const char *node_name, *target_path;
      const char *frag_name;
      int target_off, overlay_off;
      int len, err;

      node_name = fdt_get_name(overlay_dtb->fdt, frag_off, ((void*)0));

      if (strncmp(node_name, "fragment@", 9) != 0 &&
          strncmp(node_name, "fragment-", 9) != 0)
         continue;
      frag_name = node_name + 9;

      dtoverlay_debug("Found fragment %s (offset %d)", frag_name, frag_off);


      overlay_off = fdt_subnode_offset(overlay_dtb->fdt, frag_off, "__overlay__");
      if (overlay_off < 0)
      {
         if (fdt_subnode_offset(overlay_dtb->fdt, frag_off, "__dormant__"))
            dtoverlay_debug("fragment %s disabled", frag_name);
         else
            dtoverlay_error("no overlay in fragment %s", frag_name);
         continue;
      }

      target_path = fdt_getprop(overlay_dtb->fdt, frag_off, "target-path", &len);
      if (target_path)
      {
         if (len && (target_path[len - 1] == '\0'))
            len--;
         target_off = fdt_path_offset_namelen(base_dtb->fdt, target_path, len);
         if (target_off < 0)
         {
            dtoverlay_error("invalid target-path '%.*s'", len, target_path);
            return NON_FATAL(target_off);
         }
      }
      else
      {
         const void *target_prop;
         target_prop = fdt_getprop(overlay_dtb->fdt, frag_off, "target", &len);
         if (!target_prop)
         {
            dtoverlay_error("no target or target-path");
            return NON_FATAL(len);
         }

         if (len != 4)
            return NON_FATAL(FDT_ERR_BADSTRUCTURE);

         target_off =
            fdt_node_offset_by_phandle(base_dtb->fdt,
                                       fdt32_to_cpu(*(fdt32_t *)target_prop));
         if (target_off < 0)
         {
            dtoverlay_error("invalid target");
            return NON_FATAL(target_off);
         }
      }


      err = dtoverlay_merge_fragment(base_dtb, target_off, overlay_dtb,
                                     overlay_off, 0);
      if (err != 0)
      {
         dtoverlay_error("merge failed");
         return err;
      }
   }

   base_dtb->max_phandle = overlay_dtb->max_phandle;

   return 0;
}
