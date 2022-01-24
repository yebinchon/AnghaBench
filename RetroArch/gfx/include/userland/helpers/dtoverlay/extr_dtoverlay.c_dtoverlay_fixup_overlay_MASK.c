#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int fixups_applied; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 

int FUNC3(DTBLOB_T *base_dtb, DTBLOB_T *overlay_dtb)
{
   int err;

   // To do: Check the "compatible" string?

   err = FUNC1(base_dtb, overlay_dtb);

   if (err >= 0)
      err = FUNC2(base_dtb, overlay_dtb);

   overlay_dtb->fixups_applied = 1;

   return FUNC0(err);
}