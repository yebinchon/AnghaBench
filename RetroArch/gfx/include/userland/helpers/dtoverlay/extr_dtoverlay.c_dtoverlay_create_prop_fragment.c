
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fragment_name ;
struct TYPE_3__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int fdt_add_subnode (int ,int,char*) ;
 int fdt_setprop (int ,int,char const*,void const*,int) ;
 int fdt_setprop_u32 (int ,int,char*,int) ;
 int snprintf (char*,int,char*,int) ;

int dtoverlay_create_prop_fragment(DTBLOB_T *dtb, int idx, int target_phandle,
                                   const char *prop_name, const void *prop_data,
                                   int prop_len)
{
 char fragment_name[20];
 int frag_off, ovl_off;
 int ret;
 snprintf(fragment_name, sizeof(fragment_name), "fragment-%u", idx);
 frag_off = fdt_add_subnode(dtb->fdt, 0, fragment_name);
 if (frag_off < 0)
  return frag_off;
 ret = fdt_setprop_u32(dtb->fdt, frag_off, "target", target_phandle);
 if (ret < 0)
  return ret;
 ovl_off = fdt_add_subnode(dtb->fdt, frag_off, "__overlay__");
 if (ovl_off < 0)
  return ovl_off;
 return fdt_setprop(dtb->fdt, ovl_off, prop_name, prop_data, prop_len);
}
