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
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M68020_PLUS ; 
 char** g_cpcc ; 
 int g_cpu_ir ; 
 int g_cpu_pc ; 
 int /*<<< orphan*/  g_dasm_str ; 
 char* FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,char*,char*,int,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	uint extension;
	uint new_pc = g_cpu_pc;
	FUNC0(M68020_PLUS);
	extension = FUNC3();
	new_pc += FUNC2(FUNC3());
	FUNC4(g_dasm_str, "%db%-4s  %s; %x (extension = %x) (2-3)", (g_cpu_ir>>9)&7, g_cpcc[g_cpu_ir&0x3f], FUNC1(), new_pc, extension);
}