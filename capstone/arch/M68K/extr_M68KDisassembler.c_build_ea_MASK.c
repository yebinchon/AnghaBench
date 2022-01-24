#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  ir; } ;
typedef  TYPE_1__ m68k_info ;
struct TYPE_8__ {int /*<<< orphan*/ * operands; } ;
typedef  TYPE_2__ cs_m68k ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(m68k_info *info, int opcode, uint8_t size)
{
	cs_m68k* ext = FUNC0(info, opcode, 1, size);
	FUNC1(info, &ext->operands[0], info->ir, size);
}