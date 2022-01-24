#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  csh ;
struct TYPE_7__ {int /*<<< orphan*/  mem; int /*<<< orphan*/  imm; int /*<<< orphan*/  reg; scalar_t__ type; } ;
typedef  TYPE_2__ cs_mos65xx_op ;
struct TYPE_8__ {int op_count; TYPE_2__* operands; scalar_t__ modifies_flags; int /*<<< orphan*/  am; } ;
typedef  TYPE_3__ cs_mos65xx ;
typedef  int /*<<< orphan*/  cs_mode ;
struct TYPE_9__ {TYPE_1__* detail; } ;
typedef  TYPE_4__ cs_insn ;
struct TYPE_6__ {TYPE_3__ mos65xx; } ;

/* Variables and functions */
#define  MOS65XX_OP_IMM 130 
#define  MOS65XX_OP_MEM 129 
#define  MOS65XX_OP_REG 128 
 int /*<<< orphan*/  FUNC0 (char**,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

char *FUNC4(csh *handle, cs_mode mode, cs_insn *ins)
{
	int i;
	cs_mos65xx *mos65xx;
	char *result;

	result = (char *)FUNC3(sizeof(char));
	result[0] = '\0';

	if (ins->detail == NULL)
		return result;

	mos65xx = &(ins->detail->mos65xx);
	FUNC0(&result, " ; address mode: %s", FUNC2(mos65xx->am));
	FUNC0(&result, " ; modifies flags: %s", mos65xx->modifies_flags ? "true": "false");

	if (mos65xx->op_count)
		FUNC0(&result, " ; op_count: %u", mos65xx->op_count);

	for (i = 0; i < mos65xx->op_count; i++) {
		cs_mos65xx_op *op = &(mos65xx->operands[i]);
		switch((int)op->type) {
			default:
				break;
			case MOS65XX_OP_REG:
				FUNC0(&result, " ; operands[%u].type: REG = %s", i, FUNC1(*handle, op->reg));
				break;
			case MOS65XX_OP_IMM:
				FUNC0(&result, " ; operands[%u].type: IMM = 0x%x", i, op->imm);
				break;
			case MOS65XX_OP_MEM:
				FUNC0(&result, " ; operands[%u].type: MEM = 0x%x", i, op->mem);
				break;
		}
	}
	return result;
}