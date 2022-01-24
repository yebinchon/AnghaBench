#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_15__ {int /*<<< orphan*/  type; } ;
struct TYPE_18__ {TYPE_2__* operands; TYPE_1__ op_size; } ;
struct TYPE_17__ {size_t ir; unsigned int pc; TYPE_4__ extension; TYPE_5__* inst; } ;
typedef  TYPE_3__ m68k_info ;
typedef  TYPE_4__ cs_m68k ;
struct TYPE_19__ {int /*<<< orphan*/  Opcode; } ;
struct TYPE_16__ {int /*<<< orphan*/  type; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* instruction ) (TYPE_3__*) ;} ;
typedef  TYPE_5__ MCInst ;

/* Variables and functions */
 int /*<<< orphan*/  M68K_INS_INVALID ; 
 int M68K_OPERAND_COUNT ; 
 int /*<<< orphan*/  M68K_OP_REG ; 
 int /*<<< orphan*/  M68K_SIZE_TYPE_CPU ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_13__* g_instruction_table ; 
 scalar_t__ FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 size_t FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static unsigned int FUNC7(m68k_info *info, uint64_t pc)
{
	MCInst *inst = info->inst;
	cs_m68k* ext = &info->extension;
	int i;
	unsigned int size;

	inst->Opcode = M68K_INS_INVALID;

	FUNC0();

	FUNC2(ext, 0, sizeof(cs_m68k));
	ext->op_size.type = M68K_SIZE_TYPE_CPU;

	for (i = 0; i < M68K_OPERAND_COUNT; ++i)
		ext->operands[i].type = M68K_OP_REG;

	info->ir = FUNC3(info);
	if (FUNC1(info, FUNC4(info) & 0xffff)) {
		info->ir = FUNC5(info);
		g_instruction_table[info->ir].instruction(info);
	}

	size = info->pc - (unsigned int)pc;
	info->pc = (unsigned int)pc;

	return size;
}