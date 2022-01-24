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
 char** g_cc ; 
 int g_cpu_ir ; 
 int g_cpu_pc ; 
 int /*<<< orphan*/  g_dasm_str ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	uint temp_pc = g_cpu_pc;
	FUNC0(M68020_PLUS);
	FUNC2(g_dasm_str, "b%-2s     $%x; (2+)", g_cc[(g_cpu_ir>>8)&0xf], temp_pc + FUNC1());
}