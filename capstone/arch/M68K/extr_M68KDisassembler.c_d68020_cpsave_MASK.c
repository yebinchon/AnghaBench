#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ir; } ;
typedef  TYPE_1__ m68k_info ;
struct TYPE_9__ {int /*<<< orphan*/ * operands; } ;
typedef  TYPE_2__ cs_m68k ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M68020_PLUS ; 
 int /*<<< orphan*/  M68K_INS_FSAVE ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(m68k_info *info)
{
	cs_m68k* ext;

	FUNC0(info, M68020_PLUS);

	ext = FUNC1(info, M68K_INS_FSAVE, 1, 0);
	FUNC2(info, &ext->operands[0], info->ir, 1);
}