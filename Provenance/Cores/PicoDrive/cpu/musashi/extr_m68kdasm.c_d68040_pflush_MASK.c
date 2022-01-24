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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC0(M68040_PLUS);

	if (g_cpu_ir & 0x10)
	{
		FUNC1(g_dasm_str, "pflusha%s", (g_cpu_ir & 8) ? "" : "n");
	}
	else
	{
		FUNC1(g_dasm_str, "pflush%s(A%d)", (g_cpu_ir & 8) ? "" : "n", g_cpu_ir & 7);
	}
}