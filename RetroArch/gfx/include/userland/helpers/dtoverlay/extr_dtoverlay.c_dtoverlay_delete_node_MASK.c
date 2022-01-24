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
 int /*<<< orphan*/  FUNC0 (char*,int,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC3 (char const*) ; 

int FUNC4(DTBLOB_T *dtb, const char *node_path, int path_len)
{
   int node_off = 0;
   if (!path_len)
      path_len = FUNC3(node_path);

   FUNC0("delete_node(%.*s)", path_len, node_path);
   node_off = FUNC2(dtb->fdt, node_path, path_len);
   if (node_off < 0)
      return node_off;
   return FUNC1(dtb->fdt, node_off);
}