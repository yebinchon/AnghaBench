#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct TYPE_13__ {int /*<<< orphan*/  ir; } ;
typedef  TYPE_2__ m68k_info ;
struct TYPE_12__ {int reg_0; int reg_1; } ;
struct TYPE_14__ {scalar_t__ reg; int /*<<< orphan*/  type; TYPE_1__ reg_pair; int /*<<< orphan*/  address_mode; } ;
typedef  TYPE_3__ cs_m68k_op ;
struct TYPE_15__ {TYPE_3__* operands; } ;
typedef  TYPE_4__ cs_m68k ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M68020_PLUS ; 
 int /*<<< orphan*/  M68K_AM_NONE ; 
 int /*<<< orphan*/  M68K_INS_MULS ; 
 int /*<<< orphan*/  M68K_INS_MULU ; 
 int /*<<< orphan*/  M68K_OP_REG ; 
 int /*<<< orphan*/  M68K_OP_REG_PAIR ; 
 scalar_t__ M68K_REG_D0 ; 
 TYPE_4__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(m68k_info *info)
{
	uint extension, insn_signed;
	cs_m68k* ext;
	cs_m68k_op* op0;
	cs_m68k_op* op1;
	uint reg_0, reg_1;


	FUNC2(info, M68020_PLUS);

	extension = FUNC5(info);
	insn_signed = 0;

	if (FUNC1((extension)))
		insn_signed = 1;

	ext = FUNC3(info, insn_signed ? M68K_INS_MULS : M68K_INS_MULU, 2, 4);

	op0 = &ext->operands[0];
	op1 = &ext->operands[1];

	FUNC4(info, op0, info->ir, 4);

	reg_0 = extension & 7;
	reg_1 = (extension >> 12) & 7;

	op1->address_mode = M68K_AM_NONE;
	op1->type = M68K_OP_REG_PAIR;
	op1->reg_pair.reg_0 = reg_0;
	op1->reg_pair.reg_1 = reg_1;

	if (!FUNC0(extension)) {
		op1->type = M68K_OP_REG;
		op1->reg = M68K_REG_D0 + reg_1;
	}
}