#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char base_reg; char index_reg; char out_disp; char offset; char width; scalar_t__ bitfield; int /*<<< orphan*/  scale; int /*<<< orphan*/  index_size; int /*<<< orphan*/  in_disp; int /*<<< orphan*/  disp; } ;
struct TYPE_10__ {int /*<<< orphan*/  disp; } ;
struct TYPE_13__ {int address_mode; size_t reg; TYPE_3__ mem; TYPE_1__ br_disp; int /*<<< orphan*/  imm; int /*<<< orphan*/  dimm; int /*<<< orphan*/  simm; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ cs_m68k_op ;
struct TYPE_11__ {int /*<<< orphan*/  fpu_size; int /*<<< orphan*/  type; } ;
struct TYPE_14__ {TYPE_2__ op_size; } ;
typedef  TYPE_5__ cs_m68k ;
typedef  int /*<<< orphan*/  SStream ;

/* Variables and functions */
#define  M68K_AM_ABSOLUTE_DATA_LONG 150 
#define  M68K_AM_ABSOLUTE_DATA_SHORT 149 
#define  M68K_AM_AREGI_INDEX_8_BIT_DISP 148 
#define  M68K_AM_AREGI_INDEX_BASE_DISP 147 
#define  M68K_AM_BRANCH_DISPLACEMENT 146 
#define  M68K_AM_IMMEDIATE 145 
#define  M68K_AM_MEMI_POST_INDEX 144 
#define  M68K_AM_MEMI_PRE_INDEX 143 
#define  M68K_AM_NONE 142 
#define  M68K_AM_PCI_DISP 141 
#define  M68K_AM_PCI_INDEX_8_BIT_DISP 140 
#define  M68K_AM_PCI_INDEX_BASE_DISP 139 
#define  M68K_AM_PC_MEMI_POST_INDEX 138 
#define  M68K_AM_PC_MEMI_PRE_INDEX 137 
#define  M68K_AM_REGI_ADDR 136 
#define  M68K_AM_REGI_ADDR_DISP 135 
#define  M68K_AM_REGI_ADDR_POST_INC 134 
#define  M68K_AM_REGI_ADDR_PRE_DEC 133 
#define  M68K_AM_REG_DIRECT_ADDR 132 
#define  M68K_AM_REG_DIRECT_DATA 131 
 int /*<<< orphan*/  M68K_FPU_SIZE_DOUBLE ; 
 int /*<<< orphan*/  M68K_FPU_SIZE_SINGLE ; 
#define  M68K_OP_REG 130 
#define  M68K_OP_REG_BITS 129 
#define  M68K_OP_REG_PAIR 128 
 char M68K_REG_A0 ; 
 size_t M68K_REG_D0 ; 
 char M68K_REG_INVALID ; 
 int /*<<< orphan*/  M68K_SIZE_TYPE_FPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__ const*) ; 
 int /*<<< orphan*/ * s_reg_names ; 
 char s_spacing ; 

__attribute__((used)) static void FUNC5(SStream* O, unsigned int pc, const cs_m68k* inst, const cs_m68k_op* op)
{
	switch (op->address_mode) {
		case M68K_AM_NONE:
			switch (op->type) {
				case M68K_OP_REG_BITS:
					FUNC3(O, op);
					break;
				case M68K_OP_REG_PAIR:
					FUNC4(O, op);
					break;
				case M68K_OP_REG:
					FUNC0(O, "%s", s_reg_names[op->reg]);
					break;
				default:
					break;
			}
			break;

		case M68K_AM_REG_DIRECT_DATA: FUNC0(O, "d%d", (op->reg - M68K_REG_D0)); break;
		case M68K_AM_REG_DIRECT_ADDR: FUNC0(O, "a%d", (op->reg - M68K_REG_A0)); break;
		case M68K_AM_REGI_ADDR: FUNC0(O, "(a%d)", (op->reg - M68K_REG_A0)); break;
		case M68K_AM_REGI_ADDR_POST_INC: FUNC0(O, "(a%d)+", (op->reg - M68K_REG_A0)); break;
		case M68K_AM_REGI_ADDR_PRE_DEC: FUNC0(O, "-(a%d)", (op->reg - M68K_REG_A0)); break;
		case M68K_AM_REGI_ADDR_DISP: FUNC0(O, "%s$%x(a%d)", op->mem.disp < 0 ? "-" : "", FUNC1(op->mem.disp), (op->mem.base_reg - M68K_REG_A0)); break;
		case M68K_AM_PCI_DISP: FUNC0(O, "$%x(pc)", pc + 2 + op->mem.disp); break;
		case M68K_AM_ABSOLUTE_DATA_SHORT: FUNC0(O, "$%x.w", op->imm); break;
		case M68K_AM_ABSOLUTE_DATA_LONG: FUNC0(O, "$%x.l", op->imm); break;
		case M68K_AM_IMMEDIATE:
			 if (inst->op_size.type == M68K_SIZE_TYPE_FPU) {
#if defined(_KERNEL_MODE)
				 // Issue #681: Windows kernel does not support formatting float point
				 SStream_concat(O, "#<float_point_unsupported>");
				 break;
#else
				 if (inst->op_size.fpu_size == M68K_FPU_SIZE_SINGLE)
					 FUNC0(O, "#%f", op->simm);
				 else if (inst->op_size.fpu_size == M68K_FPU_SIZE_DOUBLE)
					 FUNC0(O, "#%f", op->dimm);
				 else
					 FUNC0(O, "#<unsupported>");
				 break;
#endif
			 }
			 FUNC0(O, "#$%x", op->imm);
			 break;
		case M68K_AM_PCI_INDEX_8_BIT_DISP:
			FUNC0(O, "$%x(pc,%s%s.%c)", pc + 2 + op->mem.disp, s_spacing, FUNC2(op->mem.index_reg), op->mem.index_size ? 'l' : 'w');
			break;
		case M68K_AM_AREGI_INDEX_8_BIT_DISP:
			FUNC0(O, "%s$%x(%s,%s%s.%c)", op->mem.disp < 0 ? "-" : "", FUNC1(op->mem.disp), FUNC2(op->mem.base_reg), s_spacing, FUNC2(op->mem.index_reg), op->mem.index_size ? 'l' : 'w');
			break;
		case M68K_AM_PCI_INDEX_BASE_DISP:
		case M68K_AM_AREGI_INDEX_BASE_DISP:

			if (op->address_mode == M68K_AM_PCI_INDEX_BASE_DISP) {
				FUNC0(O, "$%x", pc + 2 + op->mem.in_disp);
			} else {
				if (op->mem.in_disp > 0)
					FUNC0(O, "$%x", op->mem.in_disp);
			}

			FUNC0(O, "(");

			if (op->address_mode == M68K_AM_PCI_INDEX_BASE_DISP) {
			    FUNC0(O, "pc,%s.%c", FUNC2(op->mem.index_reg), op->mem.index_size ? 'l' : 'w');
			} else {
				if (op->mem.base_reg != M68K_REG_INVALID)
					FUNC0(O, "a%d,%s", op->mem.base_reg - M68K_REG_A0, s_spacing);
				FUNC0(O, "%s.%c", FUNC2(op->mem.index_reg), op->mem.index_size ? 'l' : 'w');
			}

			if (op->mem.scale > 0)
			    FUNC0(O, "%s*%s%d)", s_spacing, s_spacing, op->mem.scale);
			else
			    FUNC0(O, ")");
			break;
			// It's ok to just use PCMI here as is as we set base_reg to PC in the disassembler. While this is not strictly correct it makes the code
			// easier and that is what actually happens when the code is executed anyway.

		case M68K_AM_PC_MEMI_POST_INDEX:
		case M68K_AM_PC_MEMI_PRE_INDEX:
		case M68K_AM_MEMI_PRE_INDEX:
		case M68K_AM_MEMI_POST_INDEX:
			FUNC0(O, "([");

			if (op->address_mode == M68K_AM_PC_MEMI_POST_INDEX || op->address_mode == M68K_AM_PC_MEMI_PRE_INDEX) {
				FUNC0(O, "$%x", pc + 2 + op->mem.in_disp);
			} else {
				if (op->mem.in_disp > 0)
					FUNC0(O, "$%x", op->mem.in_disp);
			}

			if (op->mem.base_reg != M68K_REG_INVALID) {
				if (op->mem.in_disp > 0)
					FUNC0(O, ",%s%s", s_spacing, FUNC2(op->mem.base_reg));
				else
					FUNC0(O, "%s", FUNC2(op->mem.base_reg));
			}

			if (op->address_mode == M68K_AM_MEMI_POST_INDEX || op->address_mode == M68K_AM_PC_MEMI_POST_INDEX)
			    FUNC0(O, "]");

			if (op->mem.index_reg != M68K_REG_INVALID)
			    FUNC0(O, ",%s%s.%c", s_spacing, FUNC2(op->mem.index_reg), op->mem.index_size ? 'l' : 'w');

			if (op->mem.scale > 0)
			    FUNC0(O, "%s*%s%d", s_spacing, s_spacing, op->mem.scale);

			if (op->address_mode == M68K_AM_MEMI_PRE_INDEX || op->address_mode == M68K_AM_PC_MEMI_PRE_INDEX)
			    FUNC0(O, "]");

			if (op->mem.out_disp > 0)
			    FUNC0(O, ",%s$%x", s_spacing, op->mem.out_disp);

			FUNC0(O, ")");
			break;
		case M68K_AM_BRANCH_DISPLACEMENT:
			FUNC0(O, "$%x", pc + 2 + op->br_disp.disp);
		default:
			break;
	}

	if (op->mem.bitfield)
		FUNC0(O, "{%d:%d}", op->mem.offset, op->mem.width);
}