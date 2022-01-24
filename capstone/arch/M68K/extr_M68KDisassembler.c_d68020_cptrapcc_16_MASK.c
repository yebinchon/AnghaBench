#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct TYPE_11__ {TYPE_1__* inst; } ;
typedef  TYPE_2__ m68k_info ;
struct TYPE_12__ {int imm; int /*<<< orphan*/  type; int /*<<< orphan*/  address_mode; } ;
typedef  TYPE_3__ cs_m68k_op ;
struct TYPE_13__ {TYPE_3__* operands; } ;
typedef  TYPE_4__ cs_m68k ;
struct TYPE_10__ {int Opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M68020_PLUS ; 
 int /*<<< orphan*/  M68K_AM_IMMEDIATE ; 
 int /*<<< orphan*/  M68K_INS_FTRAPF ; 
 int /*<<< orphan*/  M68K_OP_IMM ; 
 TYPE_4__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(m68k_info *info)
{
	uint extension1, extension2;
	cs_m68k_op* op0;
	cs_m68k* ext;

	FUNC0(info, M68020_PLUS);

	extension1 = FUNC2(info);
	extension2 = FUNC2(info);

	ext = FUNC1(info, M68K_INS_FTRAPF, 1, 2);

	// these are all in row with the extension so just doing a add here is fine
	info->inst->Opcode += (extension1 & 0x2f);

	op0 = &ext->operands[0];

	op0->address_mode = M68K_AM_IMMEDIATE;
	op0->type = M68K_OP_IMM;
	op0->imm = extension2;
}