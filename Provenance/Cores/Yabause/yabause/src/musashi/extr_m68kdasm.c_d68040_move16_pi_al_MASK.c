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
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC0(M68040_PLUS);
	FUNC2(g_dasm_str, "move16  (A%d)+, %s; (4)", g_cpu_ir&7, FUNC1());
}