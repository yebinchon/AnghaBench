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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ max_phandle; void* fdt; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 int FDT_ERR_NOSPACE ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*,int) ; 
 int FUNC4 (void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 int FUNC6 (void*) ; 

DTBLOB_T *FUNC7(void *fdt, int buf_size)
{
   DTBLOB_T *dtb = NULL;
   int node_off;
   int dtb_len;
   int err;

   err = FUNC2(fdt);
   if (err != 0)
   {
      FUNC1("not a valid FDT - err %d", err);
      goto error_exit;
   }

   dtb_len = FUNC6(fdt);

   if (buf_size < dtb_len)
   {
      FUNC1("fdt is too large");
      err = -FDT_ERR_NOSPACE;
      goto error_exit;
   }

   if (buf_size > dtb_len)
         FUNC5(fdt, buf_size);

   dtb = FUNC0(1, sizeof(DTBLOB_T));
   if (!dtb)
   {
      FUNC1("out of memory");
      goto error_exit;
   }

   dtb->fdt = fdt;
   dtb->max_phandle = 0; // Not a valid phandle

   // Find the minimum and maximum phandles, in case it is necessary to
   // relocate existing ones or create new ones.

   for (node_off = 0;
        node_off >= 0;
        node_off = FUNC4(fdt, node_off, NULL))
   {
      uint32_t phandle = FUNC3(fdt, node_off);
      if (phandle > dtb->max_phandle)
         dtb->max_phandle = phandle;
   }

error_exit:
   return dtb;
}