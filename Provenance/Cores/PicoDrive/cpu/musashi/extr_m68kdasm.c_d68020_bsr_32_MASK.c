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
 int /*<<< orphan*/  DASMFLAG_STEP_OVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M68020_PLUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int g_cpu_pc ; 
 int /*<<< orphan*/  g_dasm_str ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4(void)
{
	uint temp_pc = g_cpu_pc;
	FUNC0(M68020_PLUS);
	FUNC3(g_dasm_str, "bsr     $%x; (2+)", temp_pc + FUNC2());
	FUNC1(DASMFLAG_STEP_OVER);
}