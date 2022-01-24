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
typedef  scalar_t__ UWORD ;
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 int CPU_REMEMBER_PC_STEPS ; 
 scalar_t__* CPU_remember_PC ; 
 int CPU_remember_PC_curpos ; 
 int /*<<< orphan*/ ** CPU_remember_op ; 
 int* CPU_remember_xpos ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC4(void)
{
	int i;
	for (i = 0; i < CPU_REMEMBER_PC_STEPS; i++) {
		int j;
		int k;
		UWORD saved_cpu = CPU_remember_PC[(CPU_remember_PC_curpos + i) % CPU_REMEMBER_PC_STEPS];
		UBYTE save_op[3];
		j = CPU_remember_xpos[(CPU_remember_PC_curpos + i) % CPU_REMEMBER_PC_STEPS];
		FUNC2("%3d %3d ", j >> 8, j & 0xff);
		for (k = 0; k < 3; k++) {
			save_op[k] = FUNC0(saved_cpu + k);
			FUNC1(saved_cpu + k, CPU_remember_op[(CPU_remember_PC_curpos + i) % CPU_REMEMBER_PC_STEPS][k]);
		}
		FUNC3(stdout, CPU_remember_PC[(CPU_remember_PC_curpos + i) % CPU_REMEMBER_PC_STEPS]);
		for (k = 0; k < 3; k++) {
			FUNC1(saved_cpu + k, save_op[k]);
		}
	}
}