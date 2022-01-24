#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void)
{
   FUNC1("Usage:\n");
   FUNC1("    dtmerge [<options] <base dtb> <merged dtb> - [param=value] ...\n");
   FUNC1("        to apply a parameter to the base dtb (like dtparam)\n");
   FUNC1("    dtmerge [<options] <base dtb> <merged dtb> <overlay dtb> [param=value] ...\n");
   FUNC1("        to apply an overlay with parameters (like dtoverlay)\n");
   FUNC1("  where <options> is any of:\n");
   FUNC1("    -d      Enable debug output\n");
   FUNC1("    -h      Show this help message\n");
   FUNC0(1);
}