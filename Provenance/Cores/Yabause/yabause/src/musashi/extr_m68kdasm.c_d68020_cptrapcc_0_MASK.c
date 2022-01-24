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
 int /*<<< orphan*/  g_dasm_str ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	uint extension1;
	uint extension2;
	FUNC0(M68020_PLUS);
	extension1 = FUNC1();
	extension2 = FUNC1();
	FUNC2(g_dasm_str, "%dtrap%-4s; (extension = %x) (2-3)", (g_cpu_ir>>9)&7, g_cpcc[extension1&0x3f], extension2);
}