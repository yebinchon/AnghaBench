#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct TYPE_10__ {int /*<<< orphan*/  ir; int /*<<< orphan*/  inst; } ;
typedef  TYPE_1__ m68k_info ;
struct TYPE_11__ {scalar_t__ reg; int /*<<< orphan*/  type; int /*<<< orphan*/  address_mode; } ;
typedef  TYPE_2__ cs_m68k_op ;
struct TYPE_12__ {TYPE_2__* operands; } ;
typedef  TYPE_3__ cs_m68k ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  M68K_AM_NONE ; 
 int /*<<< orphan*/  M68K_INS_CHK2 ; 
 int /*<<< orphan*/  M68K_INS_CMP2 ; 
 int /*<<< orphan*/  M68K_OP_REG ; 
 scalar_t__ M68K_REG_A0 ; 
 scalar_t__ M68K_REG_D0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(m68k_info *info, int size)
{
	cs_m68k_op* op0;
	cs_m68k_op* op1;
	cs_m68k* ext = FUNC3(info, M68K_INS_CHK2, 2, size);

	uint extension = FUNC5(info);

	if (FUNC0(extension))
		FUNC2(info->inst, M68K_INS_CHK2);
	else
		FUNC2(info->inst, M68K_INS_CMP2);

	op0 = &ext->operands[0];
	op1 = &ext->operands[1];

	FUNC4(info, op0, info->ir, size);

	op1->address_mode = M68K_AM_NONE;
	op1->type = M68K_OP_REG;
	op1->reg = (FUNC1(extension) ? M68K_REG_A0 : M68K_REG_D0) + ((extension >> 12) & 7);
}