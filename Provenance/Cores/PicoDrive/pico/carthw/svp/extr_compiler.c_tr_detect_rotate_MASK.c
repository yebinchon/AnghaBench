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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int n_in_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(unsigned int op, int *pc, int imm)
{
	// @ 3DA2 and 426A
	// ld PMC, (r3|00)
	// ld (r3|00), PMC
	// ld -, AL
	if (op != 0x02e3 || FUNC2(*pc) != 0x04e3 || FUNC2(*pc + 1) != 0x000f) return 0;

	FUNC3(0);
	FUNC0(0, 0, 4);
	FUNC1(0, 0, 0, 16);
	FUNC4(0);
	(*pc) += 2;
	n_in_ops += 2;
	return 3;
}