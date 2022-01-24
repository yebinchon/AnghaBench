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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M68020_PLUS ; 
 int /*<<< orphan*/  g_cpu_ir ; 
 int /*<<< orphan*/  g_dasm_str ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char,char*,int,...) ; 

__attribute__((used)) static void FUNC6(void)
{
	uint extension;
	FUNC2(M68020_PLUS);
	extension = FUNC4();

	if(FUNC0(extension))
		FUNC5(g_dasm_str, "div%c.l  %s, D%d:D%d; (2+)", FUNC1(extension) ? 's' : 'u', FUNC3(g_cpu_ir), extension&7, (extension>>12)&7);
	else if((extension&7) == ((extension>>12)&7))
		FUNC5(g_dasm_str, "div%c.l  %s, D%d; (2+)", FUNC1(extension) ? 's' : 'u', FUNC3(g_cpu_ir), (extension>>12)&7);
	else
		FUNC5(g_dasm_str, "div%cl.l %s, D%d:D%d; (2+)", FUNC1(extension) ? 's' : 'u', FUNC3(g_cpu_ir), extension&7, (extension>>12)&7);
}