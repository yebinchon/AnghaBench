#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  csh ;
struct TYPE_6__ {TYPE_1__* detail; } ;
typedef  TYPE_2__ cs_insn ;
struct TYPE_7__ {int pop; int push; int fee; } ;
typedef  TYPE_3__ cs_evm ;
struct TYPE_5__ {int groups_count; int /*<<< orphan*/ * groups; TYPE_3__ evm; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(csh cs_handle, cs_insn *ins)
{
	cs_evm *evm;

	// detail can be NULL on "data" instruction if SKIPDATA option is turned ON
	if (ins->detail == NULL)
		return;

	evm = &(ins->detail->evm);

	if (evm->pop)
		FUNC1("\tPop:     %u\n", evm->pop);

	if (evm->push)
		FUNC1("\tPush:    %u\n", evm->push);

	if (evm->fee)
		FUNC1("\tGas fee: %u\n", evm->fee);

	if (ins->detail->groups_count) {
		int j;

		FUNC1("\tGroups: ");
		for(j = 0; j < ins->detail->groups_count; j++) {
			FUNC1("%s ", FUNC0(handle, ins->detail->groups[j]));
		}
		FUNC1("\n");
	}
}