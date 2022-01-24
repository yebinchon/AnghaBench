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
 int* g_5bit_data_table ; 
 int /*<<< orphan*/  g_cpu_ir ; 
 int /*<<< orphan*/  g_dasm_str ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
	uint extension;
	char offset[3];
	char width[3];

	FUNC2(M68020_PLUS);

	extension = FUNC4();

	if(FUNC1(extension))
		FUNC5(offset, "D%d", (extension>>6)&7);
	else
		FUNC5(offset, "%d", (extension>>6)&31);
	if(FUNC0(extension))
		FUNC5(width, "D%d", extension&7);
	else
		FUNC5(width, "%d", g_5bit_data_table[extension&31]);
	FUNC5(g_dasm_str, "bfset   %s {%s:%s}; (2+)", FUNC3(g_cpu_ir), offset, width);
}