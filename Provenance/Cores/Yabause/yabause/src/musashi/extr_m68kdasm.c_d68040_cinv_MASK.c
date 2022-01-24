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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M68040_PLUS ; 
 int g_cpu_ir ; 
 int /*<<< orphan*/  g_dasm_str ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC0(M68040_PLUS);
	switch((g_cpu_ir>>3)&3)
	{
		case 0:
			FUNC1(g_dasm_str, "cinv (illegal scope); (4)");
			break;
		case 1:
			FUNC1(g_dasm_str, "cinvl   %d, (A%d); (4)", (g_cpu_ir>>6)&3, g_cpu_ir&7);
			break;
		case 2:
			FUNC1(g_dasm_str, "cinvp   %d, (A%d); (4)", (g_cpu_ir>>6)&3, g_cpu_ir&7);
			break;
		case 3:
			FUNC1(g_dasm_str, "cinva   %d; (4)", (g_cpu_ir>>6)&3);
			break;
	}
}