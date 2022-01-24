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
 char* FUNC0 (int /*<<< orphan*/ ,int,char const*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 

const char *FUNC2(DTBLOB_T *dtb, const char *alias_name)
{
   int node_off;
   int prop_len;
   const char *alias;

   node_off = FUNC1(dtb->fdt, "/aliases");

   alias = FUNC0(dtb->fdt, node_off, alias_name, &prop_len);
   if (alias && !prop_len)
       alias = "";
   return alias;
}