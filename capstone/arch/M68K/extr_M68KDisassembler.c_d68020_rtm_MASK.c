#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* operands; } ;
struct TYPE_8__ {int ir; TYPE_3__ extension; } ;
typedef  TYPE_1__ m68k_info ;
struct TYPE_9__ {scalar_t__ reg; int /*<<< orphan*/  type; int /*<<< orphan*/  address_mode; } ;
typedef  TYPE_2__ cs_m68k_op ;
typedef  TYPE_3__ cs_m68k ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M68020_ONLY ; 
 int /*<<< orphan*/  M68K_AM_NONE ; 
 int /*<<< orphan*/  M68K_GRP_RET ; 
 int /*<<< orphan*/  M68K_INS_RTM ; 
 int /*<<< orphan*/  M68K_OP_REG ; 
 scalar_t__ M68K_REG_A0 ; 
 scalar_t__ M68K_REG_D0 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(m68k_info *info)
{
	cs_m68k* ext;
	cs_m68k_op* op;

	FUNC3(info, M68K_GRP_RET);

	FUNC1(info, M68020_ONLY);

	FUNC2(info, M68K_INS_RTM, 0, 0);

	ext = &info->extension;
	op = &ext->operands[0];

	op->address_mode = M68K_AM_NONE;
	op->type = M68K_OP_REG;

	if (FUNC0(info->ir)) {
		op->reg = M68K_REG_A0 + (info->ir & 7);
	} else {
		op->reg = M68K_REG_D0 + (info->ir & 7);
	}
}