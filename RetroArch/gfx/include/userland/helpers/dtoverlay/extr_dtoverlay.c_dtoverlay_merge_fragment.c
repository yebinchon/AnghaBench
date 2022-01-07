
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fdt_property {char* data; } ;
typedef int overlay_path ;
typedef int base_path ;
struct TYPE_4__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int dtoverlay_debug (char*,...) ;
 scalar_t__ dtoverlay_debug_enabled ;
 int fdt_add_subnode_namelen (int ,int,char const*,int) ;
 int fdt_appendprop (int ,int,char const*,void const*,int) ;
 int fdt_first_property_offset (int ,int) ;
 int fdt_first_subnode (int ,int) ;
 char* fdt_get_name (int ,int,int*) ;
 int fdt_get_path (int ,int,char*,int) ;
 struct fdt_property* fdt_get_property_w (int ,int,char const*,int*) ;
 void* fdt_getprop_by_offset (int ,int,char const**,int*) ;
 int fdt_next_property_offset (int ,int) ;
 int fdt_next_subnode (int ,int) ;
 int fdt_setprop (int ,int,char const*,void const*,int) ;
 int fdt_subnode_offset_namelen (int ,int,char const*,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int dtoverlay_merge_fragment(DTBLOB_T *base_dtb, int target_off,
                                    const DTBLOB_T *overlay_dtb,
                                    int overlay_off, int depth)
{
   int prop_off, subnode_off;
   int err = 0;

   if (dtoverlay_debug_enabled)
   {
      char base_path[256];
      char overlay_path[256];
      fdt_get_path(base_dtb->fdt, target_off, base_path, sizeof(base_path));
      fdt_get_path(overlay_dtb->fdt, overlay_off, overlay_path,
                   sizeof(overlay_path));

      dtoverlay_debug("merge_fragment(%s,%s)", base_path,
                      overlay_path);
   }


   for (prop_off = fdt_first_property_offset(overlay_dtb->fdt, overlay_off);
        (prop_off >= 0) && (err == 0);
        prop_off = fdt_next_property_offset(overlay_dtb->fdt, prop_off))
   {
      const char *prop_name;
      const void *prop_val;
      int prop_len;
      struct fdt_property *target_prop;
      int target_len;

      prop_val = fdt_getprop_by_offset(overlay_dtb->fdt, prop_off,
                                       &prop_name, &prop_len);


      if ((strcmp(prop_name, "name") == 0) ||
          ((depth == 0) && ((strcmp(prop_name, "phandle") == 0) ||
       (strcmp(prop_name, "linux,phandle") == 0))))
          continue;

      dtoverlay_debug("  +prop(%s)", prop_name);

      if ((strcmp(prop_name, "bootargs") == 0) &&
         ((target_prop = fdt_get_property_w(base_dtb->fdt, target_off, prop_name, &target_len)) != ((void*)0)) &&
         (target_len > 0) && *target_prop->data)
      {
         target_prop->data[target_len - 1] = ' ';
         err = fdt_appendprop(base_dtb->fdt, target_off, prop_name, prop_val, prop_len);
      }
      else
         err = fdt_setprop(base_dtb->fdt, target_off, prop_name, prop_val, prop_len);
   }


   for (subnode_off = fdt_first_subnode(overlay_dtb->fdt, overlay_off);
        (subnode_off >= 0) && (err == 0);
        subnode_off = fdt_next_subnode(overlay_dtb->fdt, subnode_off))
   {
      const char *subnode_name;
      int name_len;
      int subtarget_off;

      subnode_name = fdt_get_name(overlay_dtb->fdt, subnode_off, &name_len);

      subtarget_off = fdt_subnode_offset_namelen(base_dtb->fdt, target_off,
                                                 subnode_name, name_len);
      if (subtarget_off < 0)
         subtarget_off = fdt_add_subnode_namelen(base_dtb->fdt, target_off,
                                                 subnode_name, name_len);

      if (subtarget_off >= 0)
      {
         err = dtoverlay_merge_fragment(base_dtb, subtarget_off,
                                        overlay_dtb, subnode_off,
                                        depth + 1);
      }
      else
      {
         err = subtarget_off;
      }
   }

   dtoverlay_debug("merge_fragment() end");

   return err;
}
