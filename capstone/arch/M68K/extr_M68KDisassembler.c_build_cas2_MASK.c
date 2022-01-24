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
typedef  int uint ;
typedef  int /*<<< orphan*/  m68k_info ;
struct TYPE_5__ {int reg_0; int reg_1; } ;
struct TYPE_6__ {TYPE_1__ reg_pair; void* type; void* address_mode; } ;
typedef  TYPE_2__ cs_m68k_op ;
struct TYPE_7__ {TYPE_2__* operands; } ;
typedef  TYPE_3__ cs_m68k ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 void* M68K_AM_NONE ; 
 int /*<<< orphan*/  M68K_INS_CAS2 ; 
 void* M68K_OP_REG_PAIR ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(m68k_info *info, int size)
{
	uint word3;
	uint extension;
	cs_m68k_op* op0;
	cs_m68k_op* op1;
	cs_m68k_op* op2;
	cs_m68k* ext = FUNC2(info, M68K_INS_CAS2, 3, size);
	int reg_0, reg_1;

	/* cas2 is the only 3 words instruction, word2 and word3 have the same motif bits to check */
	word3 = FUNC4(info) & 0xffff;
	if (!FUNC3(info, word3))
		return;

	op0 = &ext->operands[0];
	op1 = &ext->operands[1];
	op2 = &ext->operands[2];

	extension = FUNC5(info);

	op0->address_mode = M68K_AM_NONE;
	op0->type = M68K_OP_REG_PAIR;
	op0->reg_pair.reg_0 = (extension >> 16) & 7;
	op0->reg_pair.reg_1 = extension & 7;

	op1->address_mode = M68K_AM_NONE;
	op1->type = M68K_OP_REG_PAIR;
	op1->reg_pair.reg_0 = (extension >> 22) & 7;
	op1->reg_pair.reg_1 = (extension >> 6) & 7;

	reg_0 = (extension >> 28) & 7;
	reg_1 = (extension >> 12) & 7;

	op2->address_mode = M68K_AM_NONE;
	op2->type = M68K_OP_REG_PAIR;
	op2->reg_pair.reg_0 = reg_0 + (FUNC0(extension) ? 8 : 0);
	op2->reg_pair.reg_1 = reg_1 + (FUNC1(extension) ? 8 : 0);
}