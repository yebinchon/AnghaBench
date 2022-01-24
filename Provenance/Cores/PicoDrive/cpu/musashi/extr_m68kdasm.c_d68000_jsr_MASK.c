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
 int /*<<< orphan*/  DASMFLAG_STEP_OVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_cpu_ir ; 
 int /*<<< orphan*/  g_dasm_str ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC2(g_dasm_str, "jsr     %s", FUNC1(g_cpu_ir));
	FUNC0(DASMFLAG_STEP_OVER);
}