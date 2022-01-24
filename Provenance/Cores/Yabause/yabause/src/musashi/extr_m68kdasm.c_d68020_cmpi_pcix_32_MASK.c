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
 int /*<<< orphan*/  M68010_PLUS ; 
 int /*<<< orphan*/  g_cpu_ir ; 
 int /*<<< orphan*/  g_dasm_str ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
	char* str;
	FUNC0(M68010_PLUS);
	str = FUNC2();
	FUNC3(g_dasm_str, "cmpi.l  %s, %s; (2+)", str, FUNC1(g_cpu_ir));
}