#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  fdt; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 int FDT_ERR_BADSTRUCTURE ; 
 int FDT_ERR_INTERNAL ; 
 int FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int,int*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,char const**,int*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int,char const*,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,int) ; 

__attribute__((used)) static int FUNC11(DTBLOB_T *dtb, int fix_off,
                                       int target_off, uint32_t phandle_offset)
{
   // The fixups are arranged as a subtree mirroring the structure of the
   // overall tree. Walk this tree in order. Each property is an array of cells
   // containing offsets to patch within the corresponding node/property of
   // the target tree.
   int err = 0;
   int prop_off;
   int subfix_off;

   // Merge each property of the node
   for (prop_off = FUNC2(dtb->fdt, fix_off);
        (prop_off >= 0) && (err == 0);
        prop_off = FUNC7(dtb->fdt, prop_off))
   {
      const char *prop_name;
      const void *prop_val;
      int prop_len;
      void *target_ptr;
      int target_len;
      int off;

      prop_val = FUNC5(dtb->fdt, prop_off,
                                       &prop_name, &prop_len);
      if (!prop_val)
         return -FDT_ERR_INTERNAL;

      target_ptr = FUNC6(dtb->fdt, target_off, prop_name, &target_len);
      if (!target_ptr)
         return -FDT_ERR_BADSTRUCTURE;

      for (off = 0; (off + 4) <= prop_len; off += 4)
      {
         uint32_t patch;
         int patch_offset = FUNC0(prop_val, off);
         if ((patch_offset + 4) > target_len)
            return -FDT_ERR_BADSTRUCTURE;

         patch = phandle_offset + FUNC0(target_ptr, patch_offset);
         FUNC10("  phandle fixup %d+%d->%d", phandle_offset, patch - phandle_offset, patch);

         FUNC1(target_ptr, patch_offset, patch);
      }
   }

   // Merge each subnode of the node
   for (subfix_off = FUNC3(dtb->fdt, fix_off);
        (subfix_off >= 0) && (err == 0);
        subfix_off = FUNC8(dtb->fdt, subfix_off))
   {
      const char *subnode_name;
      int name_len;
      int subtarget_off;

      subnode_name = FUNC4(dtb->fdt, subfix_off, &name_len);

      subtarget_off = FUNC9(dtb->fdt, target_off,
                                                 subnode_name, name_len);

      if (subtarget_off >= 0)
      {
         err = FUNC11(dtb, subfix_off, subtarget_off,
                                           phandle_offset);
      }
      else
      {
         err = subtarget_off;
      }
   }

   return err;
}