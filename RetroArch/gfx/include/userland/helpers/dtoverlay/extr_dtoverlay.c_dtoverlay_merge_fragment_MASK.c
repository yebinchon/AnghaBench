#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fdt_property {char* data; } ;
typedef  int /*<<< orphan*/  overlay_path ;
typedef  int /*<<< orphan*/  base_path ;
struct TYPE_4__ {int /*<<< orphan*/  fdt; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ dtoverlay_debug_enabled ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char const*,void const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int) ; 
 struct fdt_property* FUNC7 (int /*<<< orphan*/ ,int,char const*,int*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int,char const**,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,char const*,void const*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,char const*,int) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 

__attribute__((used)) static int FUNC14(DTBLOB_T *base_dtb, int target_off,
                                    const DTBLOB_T *overlay_dtb,
                                    int overlay_off, int depth)
{
   int prop_off, subnode_off;
   int err = 0;

   if (dtoverlay_debug_enabled)
   {
      char base_path[256];
      char overlay_path[256];
      FUNC6(base_dtb->fdt, target_off, base_path, sizeof(base_path));
      FUNC6(overlay_dtb->fdt, overlay_off, overlay_path,
                   sizeof(overlay_path));

      FUNC0("merge_fragment(%s,%s)", base_path,
                      overlay_path);
   }

   // Merge each property of the node
   for (prop_off = FUNC3(overlay_dtb->fdt, overlay_off);
        (prop_off >= 0) && (err == 0);
        prop_off = FUNC9(overlay_dtb->fdt, prop_off))
   {
      const char *prop_name;
      const void *prop_val;
      int prop_len;
      struct fdt_property *target_prop;
      int target_len;

      prop_val = FUNC8(overlay_dtb->fdt, prop_off,
                                       &prop_name, &prop_len);

      /* Skip these system properties (only phandles in the first level) */
      if ((FUNC13(prop_name, "name") == 0) ||
          ((depth == 0) && ((FUNC13(prop_name, "phandle") == 0) ||
			    (FUNC13(prop_name, "linux,phandle") == 0))))
          continue;

      FUNC0("  +prop(%s)", prop_name);

      if ((FUNC13(prop_name, "bootargs") == 0) &&
         ((target_prop = FUNC7(base_dtb->fdt, target_off, prop_name, &target_len)) != NULL) &&
         (target_len > 0) && *target_prop->data)
      {
         target_prop->data[target_len - 1] = ' ';
         err = FUNC2(base_dtb->fdt, target_off, prop_name, prop_val, prop_len);
      }
      else
         err = FUNC11(base_dtb->fdt, target_off, prop_name, prop_val, prop_len);
   }

   // Merge each subnode of the node
   for (subnode_off = FUNC4(overlay_dtb->fdt, overlay_off);
        (subnode_off >= 0) && (err == 0);
        subnode_off = FUNC10(overlay_dtb->fdt, subnode_off))
   {
      const char *subnode_name;
      int name_len;
      int subtarget_off;

      subnode_name = FUNC5(overlay_dtb->fdt, subnode_off, &name_len);

      subtarget_off = FUNC12(base_dtb->fdt, target_off,
                                                 subnode_name, name_len);
      if (subtarget_off < 0)
         subtarget_off = FUNC1(base_dtb->fdt, target_off,
                                                 subnode_name, name_len);

      if (subtarget_off >= 0)
      {
         err = FUNC14(base_dtb, subtarget_off,
                                        overlay_dtb, subnode_off,
                                        depth + 1);
      }
      else
      {
         err = subtarget_off;
      }
   }

   FUNC0("merge_fragment() end");

   return err;
}