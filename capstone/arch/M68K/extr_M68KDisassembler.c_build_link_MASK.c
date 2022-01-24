#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ir; } ;
typedef  TYPE_1__ m68k_info ;
struct TYPE_8__ {int imm; int /*<<< orphan*/  type; int /*<<< orphan*/  address_mode; scalar_t__ reg; } ;
typedef  TYPE_2__ cs_m68k_op ;
struct TYPE_9__ {TYPE_2__* operands; } ;
typedef  TYPE_3__ cs_m68k ;

/* Variables and functions */
 int /*<<< orphan*/  M68K_AM_IMMEDIATE ; 
 int /*<<< orphan*/  M68K_AM_NONE ; 
 int /*<<< orphan*/  M68K_INS_LINK ; 
 int /*<<< orphan*/  M68K_OP_IMM ; 
 scalar_t__ M68K_REG_A0 ; 
 TYPE_3__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(m68k_info *info, int disp, int size)
{
	cs_m68k_op* op0;
	cs_m68k_op* op1;
	cs_m68k* ext = FUNC0(info, M68K_INS_LINK, 2, size);

	op0 = &ext->operands[0];
	op1 = &ext->operands[1];

	op0->address_mode = M68K_AM_NONE;
	op0->reg = M68K_REG_A0 + (info->ir & 7);

	op1->address_mode = M68K_AM_IMMEDIATE;
	op1->type = M68K_OP_IMM;
	op1->imm = disp;
}