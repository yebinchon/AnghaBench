#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t size; TYPE_1__* Operands; } ;
struct TYPE_4__ {unsigned int RegVal; int /*<<< orphan*/  Kind; } ;
typedef  TYPE_1__ MCOperand ;
typedef  TYPE_2__ MCInst ;

/* Variables and functions */
 int /*<<< orphan*/  kRegister ; 

void FUNC0(MCInst *mcInst, unsigned Reg)
{
	MCOperand *op = &(mcInst->Operands[mcInst->size]);
	mcInst->size++;

	op->Kind = kRegister;
	op->RegVal = Reg;
}