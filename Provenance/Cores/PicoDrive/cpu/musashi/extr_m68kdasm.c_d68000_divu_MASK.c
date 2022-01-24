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
 int g_cpu_ir ; 
 int /*<<< orphan*/  g_dasm_str ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1(g_dasm_str, "divu.w  %s, D%d", FUNC0(g_cpu_ir), (g_cpu_ir>>9)&7);
}