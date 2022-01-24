#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ status; } ;
struct TYPE_5__ {TYPE_1__ ST; scalar_t__ eg_cnt; scalar_t__ eg_timer; } ;
struct TYPE_6__ {int* REGS; scalar_t__ addr_A1; scalar_t__ dacen; int /*<<< orphan*/ * CH; TYPE_2__ OPN; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_3__ ym2612 ; 

void FUNC4(void)
{
	int i;

	FUNC1(ym2612.REGS, 0, sizeof(ym2612.REGS));

	FUNC3( 0x30 ); /* mode 0 , timer reset */
	ym2612.REGS[0x27] = 0x30;

	ym2612.OPN.eg_timer = 0;
	ym2612.OPN.eg_cnt   = 0;
	ym2612.OPN.ST.status = 0;

	FUNC2( &ym2612.CH[0] );
	for(i = 0xb6 ; i >= 0xb4 ; i-- )
	{
		FUNC0(i      ,0xc0);
		FUNC0(i|0x100,0xc0);
		ym2612.REGS[i      ] = 0xc0;
		ym2612.REGS[i|0x100] = 0xc0;
	}
	for(i = 0xb2 ; i >= 0x30 ; i-- )
	{
		FUNC0(i      ,0);
		FUNC0(i|0x100,0);
	}
	for(i = 0x26 ; i >= 0x20 ; i-- ) FUNC0(i,0);
	/* DAC mode clear */
	ym2612.dacen = 0;
	ym2612.addr_A1 = 0;
}