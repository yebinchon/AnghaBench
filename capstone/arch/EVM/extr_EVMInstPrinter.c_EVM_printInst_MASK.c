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
struct SStream {int dummy; } ;
typedef  int /*<<< orphan*/  csh ;
struct TYPE_3__ {scalar_t__ Opcode; int /*<<< orphan*/ * evm_data; scalar_t__ csh; } ;
typedef  TYPE_1__ MCInst ;

/* Variables and functions */
 scalar_t__ EVM_INS_PUSH1 ; 
 scalar_t__ EVM_INS_PUSH32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct SStream*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct SStream*,char*) ; 

void FUNC3(MCInst *MI, struct SStream *O, void *PrinterInfo)
{
	FUNC1(O, FUNC0((csh)MI->csh, MI->Opcode));

	if (MI->Opcode >= EVM_INS_PUSH1 && MI->Opcode <= EVM_INS_PUSH32) {
		unsigned int i;

		FUNC2(O, "\t");
		for (i = 0; i < MI->Opcode - EVM_INS_PUSH1 + 1; i++) {
			FUNC1(O, "%02x", MI->evm_data[i]);
		}
	}
}