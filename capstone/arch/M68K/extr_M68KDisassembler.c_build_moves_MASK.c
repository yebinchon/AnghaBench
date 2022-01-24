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
struct TYPE_10__ {int /*<<< orphan*/  ir; } ;
typedef  TYPE_1__ m68k_info ;
struct TYPE_11__ {void* reg; } ;
typedef  TYPE_2__ cs_m68k_op ;
struct TYPE_12__ {TYPE_2__* operands; } ;
typedef  TYPE_3__ cs_m68k ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  M68K_INS_MOVES ; 
 void* M68K_REG_A0 ; 
 void* M68K_REG_D0 ; 
 TYPE_3__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(m68k_info *info, int size)
{
	cs_m68k_op* op0;
	cs_m68k_op* op1;
	cs_m68k* ext = FUNC2(info, M68K_INS_MOVES, 2, size);
	uint extension = FUNC4(info);

	op0 = &ext->operands[0];
	op1 = &ext->operands[1];

	if (FUNC0(extension)) {
		op0->reg = (FUNC1(extension) ? M68K_REG_A0 : M68K_REG_D0) + ((extension >> 12) & 7);
		FUNC3(info, op1, info->ir, size);
	} else {
		FUNC3(info, op0, info->ir, size);
		op1->reg = (FUNC1(extension) ? M68K_REG_A0 : M68K_REG_D0) + ((extension >> 12) & 7);
	}
}