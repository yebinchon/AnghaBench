#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fdt32_t ;
struct TYPE_6__ {int /*<<< orphan*/  max_phandle; int /*<<< orphan*/  fdt; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 int FDT_ERR_BADSTRUCTURE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (TYPE_1__*,int,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int,char*,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC12 (char const*,char*,int) ; 

int FUNC13(DTBLOB_T *base_dtb, DTBLOB_T *overlay_dtb)
{
   // Merge each fragment node
   int frag_off;

   for (frag_off = FUNC5(overlay_dtb->fdt, 0);
        frag_off >= 0;
        frag_off = FUNC8(overlay_dtb->fdt, frag_off))
   {
      const char *node_name, *target_path;
      const char *frag_name;
      int target_off, overlay_off;
      int len, err;

      node_name = FUNC6(overlay_dtb->fdt, frag_off, NULL);

      if (FUNC12(node_name, "fragment@", 9) != 0 &&
          FUNC12(node_name, "fragment-", 9) != 0)
         continue;
      frag_name = node_name + 9;

      FUNC1("Found fragment %s (offset %d)", frag_name, frag_off);

      // Find the target and overlay nodes
      overlay_off = FUNC11(overlay_dtb->fdt, frag_off, "__overlay__");
      if (overlay_off < 0)
      {
         if (FUNC11(overlay_dtb->fdt, frag_off, "__dormant__"))
            FUNC1("fragment %s disabled", frag_name);
         else
            FUNC2("no overlay in fragment %s", frag_name);
         continue;
      }

      target_path = FUNC7(overlay_dtb->fdt, frag_off, "target-path", &len);
      if (target_path)
      {
         if (len && (target_path[len - 1] == '\0'))
            len--;
         target_off = FUNC10(base_dtb->fdt, target_path, len);
         if (target_off < 0)
         {
            FUNC2("invalid target-path '%.*s'", len, target_path);
            return FUNC0(target_off);
         }
      }
      else
      {
         const void *target_prop;
         target_prop = FUNC7(overlay_dtb->fdt, frag_off, "target", &len);
         if (!target_prop)
         {
            FUNC2("no target or target-path");
            return FUNC0(len);
         }

         if (len != 4)
            return FUNC0(FDT_ERR_BADSTRUCTURE);

         target_off =
            FUNC9(base_dtb->fdt,
                                       FUNC4(*(fdt32_t *)target_prop));
         if (target_off < 0)
         {
            FUNC2("invalid target");
            return FUNC0(target_off);
         }
      }

      // Now do the merge
      err = FUNC3(base_dtb, target_off, overlay_dtb,
                                     overlay_off, 0);
      if (err != 0)
      {
         FUNC2("merge failed");
         return err;
      }
   }

   base_dtb->max_phandle = overlay_dtb->max_phandle;

   return 0;
}