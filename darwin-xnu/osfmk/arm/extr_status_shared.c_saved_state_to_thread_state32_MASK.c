#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int lr; int sp; int pc; int* r; int /*<<< orphan*/  cpsr; } ;
typedef  TYPE_1__ arm_thread_state32_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 

void
FUNC7(const arm_saved_state_t *saved_state, arm_thread_state32_t *ts32)
{
	uint32_t i;

	FUNC0(FUNC6(saved_state));

	ts32->lr = (uint32_t)FUNC2(saved_state);
	ts32->sp = (uint32_t)FUNC5(saved_state);
	ts32->pc = (uint32_t)FUNC3(saved_state);
	ts32->cpsr = FUNC1(saved_state);
	for (i = 0; i < 13; i++)
		ts32->r[i] = (uint32_t)FUNC4(saved_state, i);
}