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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  DASMFLAG_STEP_OUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M68020_ONLY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int g_cpu_ir ; 
 int /*<<< orphan*/  g_dasm_str ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char,int) ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC1(M68020_ONLY);
	FUNC3(g_dasm_str, "rtm     %c%d; (2+)", FUNC0(g_cpu_ir) ? 'A' : 'D', g_cpu_ir&7);
	FUNC2(DASMFLAG_STEP_OUT);
}