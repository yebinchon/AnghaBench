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
struct TYPE_3__ {int /*<<< orphan*/  fdt; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 void const* FUNC0 (int /*<<< orphan*/ ,int,char const*,int*) ; 

const void *FUNC1(DTBLOB_T *dtb, int pos, const char *prop_name, int *prop_len)
{
   return FUNC0(dtb->fdt, pos, prop_name, prop_len);
}