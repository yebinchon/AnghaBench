#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  fdt32_t ;
struct TYPE_5__ {int /*<<< orphan*/  fdt; scalar_t__ max_phandle; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 int FDT_ERR_NOTFOUND ; 
 int /*<<< orphan*/  FIXUP_ABSOLUTE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (TYPE_1__*,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int,char const*,int*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int,char const**,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,scalar_t__) ; 

__attribute__((used)) static int FUNC11(DTBLOB_T *base_dtb, DTBLOB_T *overlay_dtb)
{
   int fixups_off;
   int err = 0;

   fixups_off = FUNC8(overlay_dtb->fdt, "/__fixups__");

   if (fixups_off >= 0)
   {
      int fixup_off, symbols_off = -1;

      fixup_off = FUNC3(overlay_dtb->fdt, fixups_off);

      if (fixup_off >= 0)
      {
         // Find the symbols, which will be needed to resolve the fixups
         symbols_off = FUNC8(base_dtb->fdt, "/__symbols__");

         if (symbols_off < 0)
         {
            FUNC2("No symbols found");
            return -FDT_ERR_NOTFOUND;
         }
      }

      for (;
           fixup_off >= 0;
           fixup_off = FUNC7(overlay_dtb->fdt, fixup_off))
      {
         const char *fixups_stringlist, *symbol_name, *target_path;
         const char *ref_type;
         int target_off;
         uint32_t target_phandle;

         // The property name identifies a symbol (or alias) in the base.
         // The value is a comma-separated list of descriptors of the form:
         //    path:property:offset
         fixups_stringlist = FUNC6(overlay_dtb->fdt, fixup_off,
                                                   &symbol_name, &err);
         if (!fixups_stringlist)
         {
            FUNC2("__fixups__ are borked");
            break;
         }

         // 1) Find the target node.
         if (symbol_name[0] == '/')
         {
            /* This is a new-style path reference */
            target_path = symbol_name;
            ref_type = "path";
         }
         else
         {
            target_path = FUNC5(base_dtb->fdt, symbols_off, symbol_name,
                                      &err);
            if (!target_path)
            {
               FUNC2("can't find symbol '%s'", symbol_name);
               break;
            }

            ref_type = "symbol";
         }

         target_off = FUNC8(base_dtb->fdt, target_path);
         if (target_off < 0)
         {
            FUNC2("%s '%s' is invalid", ref_type, symbol_name);
            err = target_off;
            break;
         }

         // 2) Ensure that the target node has a phandle.
         target_phandle = FUNC4(base_dtb->fdt, target_off);
         if (!target_phandle)
         {
            // It doesn't, so give it one
            fdt32_t temp;
            target_phandle = ++base_dtb->max_phandle;
            temp = FUNC0(target_phandle);

            err = FUNC9(base_dtb->fdt, target_off, "phandle",
                              &temp, 4);

            if (err != 0)
            {
               FUNC2("failed to add a phandle");
               break;
            }
            FUNC10("  phandle '%s'->%d", target_path, target_phandle);

            // The symbols may have moved, so recalculate
            symbols_off = FUNC8(base_dtb->fdt, "/__symbols__");
         }

         // Now apply the valid target_phandle to the items in the fixup string

         err = FUNC1(overlay_dtb, fixups_stringlist,
                                      target_phandle, FIXUP_ABSOLUTE);
         if (err)
            break;
      }
   }

   return err;
}