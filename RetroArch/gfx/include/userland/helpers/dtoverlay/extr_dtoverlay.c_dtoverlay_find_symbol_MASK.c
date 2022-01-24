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
struct TYPE_4__ {int /*<<< orphan*/  fdt; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 int FDT_ERR_NOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (TYPE_1__*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int,char const*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC5 (char const*) ; 

int FUNC6(DTBLOB_T *dtb, const char *symbol_name)
{
   int symbols_off, path_len;
   const char *node_path;

   node_path = FUNC1(dtb, symbol_name);

   if (node_path)
   {
      path_len = FUNC5(node_path);
   }
   else
   {
      symbols_off = FUNC3(dtb->fdt, "/__symbols__");

      if (symbols_off < 0)
      {
         FUNC0("No symbols found");
         return -FDT_ERR_NOTFOUND;
      }

      node_path = FUNC2(dtb->fdt, symbols_off, symbol_name, &path_len);
      if (path_len < 0)
         return -FDT_ERR_NOTFOUND;
   }
   return FUNC4(dtb->fdt, node_path, path_len);
}