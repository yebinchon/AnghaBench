#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  m68k_info ;
struct TYPE_6__ {scalar_t__ reg_1; scalar_t__ reg_0; } ;
struct TYPE_7__ {TYPE_1__ reg_pair; scalar_t__ reg; scalar_t__ type; } ;
typedef  TYPE_2__ cs_m68k_op ;

/* Variables and functions */
#define  M68K_OP_MEM 131 
#define  M68K_OP_REG 130 
#define  M68K_OP_REG_BITS 129 
#define  M68K_OP_REG_PAIR 128 
 scalar_t__ M68K_REG_D0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC3(m68k_info *info, cs_m68k_op *op, int write)
{
	switch ((int)op->type) {
		case M68K_OP_REG:
			FUNC0(info, op->reg, write);
			break;

		case M68K_OP_MEM:
			FUNC1(info, op, write);
			break;

		case M68K_OP_REG_BITS:
			FUNC2(info, op, write);
			break;

		case M68K_OP_REG_PAIR:
			FUNC0(info, M68K_REG_D0 + op->reg_pair.reg_0, write);
			FUNC0(info, M68K_REG_D0 + op->reg_pair.reg_1, write);
			break;
	}
}