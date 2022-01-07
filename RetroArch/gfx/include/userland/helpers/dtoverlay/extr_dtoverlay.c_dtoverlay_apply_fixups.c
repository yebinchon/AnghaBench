
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ fixup_type_t ;
struct TYPE_3__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 int FDT_ERR_BADSTRUCTURE ;
 scalar_t__ FIXUP_RELATIVE ;
 scalar_t__ dtoverlay_read_u32 (void const*,unsigned long) ;
 int dtoverlay_write_u32 (void*,unsigned long,scalar_t__) ;
 void* fdt_getprop_namelen (int ,int,char const*,int,int*) ;
 int fdt_path_offset_namelen (int ,char const*,int) ;
 int phandle_debug (char*,char const*,scalar_t__,...) ;
 char* strchr (char const*,char) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static int dtoverlay_apply_fixups(DTBLOB_T *dtb, const char *fixups_stringlist,
                                  uint32_t phandle, fixup_type_t type)
{
   const char *fixup = fixups_stringlist;

   while (fixup[0])
   {
      const char *prop_name, *offset_str;
      char *offset_end;
      const void *prop_ptr;
      int prop_len;
      int node_off;
      unsigned long offset;
      uint32_t patch;

      prop_name = strchr(fixup, ':');
      if (!prop_name)
         return -FDT_ERR_BADSTRUCTURE;
      prop_name++;

      offset_str = strchr(prop_name, ':');
      if (!offset_str)
         return -FDT_ERR_BADSTRUCTURE;
      offset_str++;

      offset = strtoul(offset_str, &offset_end, 10);
      if ((offset_end == offset_str) || (offset_end[0] != 0))
         return -FDT_ERR_BADSTRUCTURE;

      node_off = fdt_path_offset_namelen(dtb->fdt, fixup, prop_name - 1 - fixup);
      if (node_off < 0)
         return node_off;

      prop_ptr = fdt_getprop_namelen(dtb->fdt, node_off, prop_name,
                                     offset_str - 1 - prop_name, &prop_len);
      if (!prop_ptr)
         return prop_len;
      if (offset > (prop_len - 4))
         return -FDT_ERR_BADSTRUCTURE;




      if (type == FIXUP_RELATIVE)
      {
         patch = phandle + dtoverlay_read_u32(prop_ptr, offset);
         phandle_debug("  phandle fixup %d+%d->%d", phandle, patch - phandle, patch);
      }
      else
      {
         patch = phandle;
         phandle_debug("  phandle ref '%s'->%d", prop_name, patch);
      }

      dtoverlay_write_u32((void *)prop_ptr, offset, patch);

      fixup = offset_end + 1;
   }

   return 0;
}
