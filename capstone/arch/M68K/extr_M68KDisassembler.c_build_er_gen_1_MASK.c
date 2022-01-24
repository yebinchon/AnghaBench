#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int ir; } ;
typedef  TYPE_1__ m68k_info ;
struct TYPE_10__ {scalar_t__ reg; int /*<<< orphan*/  address_mode; } ;
typedef  TYPE_2__ cs_m68k_op ;
struct TYPE_11__ {TYPE_2__* operands; } ;
typedef  TYPE_3__ cs_m68k ;

/* Variables and functions */
 int /*<<< orphan*/  M68K_AM_REG_DIRECT_ADDR ; 
 int /*<<< orphan*/  M68K_AM_REG_DIRECT_DATA ; 
 scalar_t__ M68K_REG_A0 ; 
 scalar_t__ M68K_REG_D0 ; 
 TYPE_3__* FUNC0 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(m68k_info *info, bool isDreg, int opcode, uint8_t size)
{
	cs_m68k_op* op0;
	cs_m68k_op* op1;
	cs_m68k* ext = FUNC0(info, opcode, 2, size);

	op0 = &ext->operands[0];
	op1 = &ext->operands[1];

	FUNC1(info, op0, info->ir, size);

	if (isDreg) {
		op1->address_mode = M68K_AM_REG_DIRECT_DATA;
		op1->reg = M68K_REG_D0 + ((info->ir >> 9) & 7);
	} else {
		op1->address_mode = M68K_AM_REG_DIRECT_ADDR;
		op1->reg = M68K_REG_A0 + ((info->ir >> 9) & 7);
	}
}