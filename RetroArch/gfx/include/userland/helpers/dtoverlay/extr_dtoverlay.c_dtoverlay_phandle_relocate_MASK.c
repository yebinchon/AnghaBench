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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  fdt32_t ;
struct TYPE_3__ {int /*<<< orphan*/  fdt; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 int FDT_ERR_BADSTRUCTURE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,char const*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(DTBLOB_T *dtb, int node_off,
                                      const char *prop_name,
                                      uint32_t phandle_increment)
{
   int len;
   const fdt32_t *prop_val = FUNC2(dtb->fdt, node_off, prop_name, &len);
   int err = 0; // The absence of the property is not an error

   if (prop_val)
   {
      uint32_t phandle;

      if (len < 4)
      {
         FUNC0("%s property too small", prop_name);
         return -FDT_ERR_BADSTRUCTURE;
      }

      phandle = FUNC1(*prop_val) + phandle_increment;
      FUNC4("  phandle_relocate %d->%d", FUNC1(*prop_val), phandle);

      err = FUNC3(dtb->fdt, node_off, prop_name, phandle);
   }

   return err;
}