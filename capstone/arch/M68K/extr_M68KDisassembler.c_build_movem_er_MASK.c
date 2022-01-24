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
struct TYPE_10__ {int /*<<< orphan*/  ir; } ;
typedef  TYPE_1__ m68k_info ;
struct TYPE_11__ {int /*<<< orphan*/  register_bits; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ cs_m68k_op ;
struct TYPE_12__ {TYPE_2__* operands; } ;
typedef  TYPE_3__ cs_m68k ;

/* Variables and functions */
 int /*<<< orphan*/  M68K_OP_REG_BITS ; 
 TYPE_3__* FUNC0 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(m68k_info *info, int opcode, int size)
{
	cs_m68k_op* op0;
	cs_m68k_op* op1;
	cs_m68k* ext = FUNC0(info, opcode, 2, size);

	op0 = &ext->operands[0];
	op1 = &ext->operands[1];

	op1->type = M68K_OP_REG_BITS;
	op1->register_bits = FUNC2(info);

	FUNC1(info, op0, info->ir, size);
}