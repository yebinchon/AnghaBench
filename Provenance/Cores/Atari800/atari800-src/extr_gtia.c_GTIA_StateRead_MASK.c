#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  GTIA_COLBK ; 
 int /*<<< orphan*/  GTIA_COLPF0 ; 
 int /*<<< orphan*/  GTIA_COLPF1 ; 
 int /*<<< orphan*/  GTIA_COLPF2 ; 
 int /*<<< orphan*/  GTIA_COLPF3 ; 
 int /*<<< orphan*/  GTIA_COLPM0 ; 
 int /*<<< orphan*/  GTIA_COLPM1 ; 
 int /*<<< orphan*/  GTIA_COLPM2 ; 
 int /*<<< orphan*/  GTIA_COLPM3 ; 
 int /*<<< orphan*/  GTIA_GRACTL ; 
 int /*<<< orphan*/  GTIA_GRAFM ; 
 int /*<<< orphan*/  GTIA_GRAFP0 ; 
 int /*<<< orphan*/  GTIA_GRAFP1 ; 
 int /*<<< orphan*/  GTIA_GRAFP2 ; 
 int /*<<< orphan*/  GTIA_GRAFP3 ; 
 int /*<<< orphan*/  GTIA_HPOSM0 ; 
 int /*<<< orphan*/  GTIA_HPOSM1 ; 
 int /*<<< orphan*/  GTIA_HPOSM2 ; 
 int /*<<< orphan*/  GTIA_HPOSM3 ; 
 int /*<<< orphan*/  GTIA_HPOSP0 ; 
 int /*<<< orphan*/  GTIA_HPOSP1 ; 
 int /*<<< orphan*/  GTIA_HPOSP2 ; 
 int /*<<< orphan*/  GTIA_HPOSP3 ; 
 int /*<<< orphan*/  GTIA_M0PL ; 
 int /*<<< orphan*/  GTIA_M1PL ; 
 int /*<<< orphan*/  GTIA_M2PL ; 
 int /*<<< orphan*/  GTIA_M3PL ; 
 int /*<<< orphan*/  GTIA_OFFSET_COLBK ; 
 int /*<<< orphan*/  GTIA_OFFSET_COLPF0 ; 
 int /*<<< orphan*/  GTIA_OFFSET_COLPF1 ; 
 int /*<<< orphan*/  GTIA_OFFSET_COLPF2 ; 
 int /*<<< orphan*/  GTIA_OFFSET_COLPF3 ; 
 int /*<<< orphan*/  GTIA_OFFSET_COLPM0 ; 
 int /*<<< orphan*/  GTIA_OFFSET_COLPM1 ; 
 int /*<<< orphan*/  GTIA_OFFSET_COLPM2 ; 
 int /*<<< orphan*/  GTIA_OFFSET_COLPM3 ; 
 int /*<<< orphan*/  GTIA_OFFSET_GRACTL ; 
 int /*<<< orphan*/  GTIA_OFFSET_GRAFM ; 
 int /*<<< orphan*/  GTIA_OFFSET_GRAFP0 ; 
 int /*<<< orphan*/  GTIA_OFFSET_GRAFP1 ; 
 int /*<<< orphan*/  GTIA_OFFSET_GRAFP2 ; 
 int /*<<< orphan*/  GTIA_OFFSET_GRAFP3 ; 
 int /*<<< orphan*/  GTIA_OFFSET_HPOSM0 ; 
 int /*<<< orphan*/  GTIA_OFFSET_HPOSM1 ; 
 int /*<<< orphan*/  GTIA_OFFSET_HPOSM2 ; 
 int /*<<< orphan*/  GTIA_OFFSET_HPOSM3 ; 
 int /*<<< orphan*/  GTIA_OFFSET_HPOSP0 ; 
 int /*<<< orphan*/  GTIA_OFFSET_HPOSP1 ; 
 int /*<<< orphan*/  GTIA_OFFSET_HPOSP2 ; 
 int /*<<< orphan*/  GTIA_OFFSET_HPOSP3 ; 
 int /*<<< orphan*/  GTIA_OFFSET_PRIOR ; 
 int /*<<< orphan*/  GTIA_OFFSET_SIZEM ; 
 int /*<<< orphan*/  GTIA_OFFSET_SIZEP0 ; 
 int /*<<< orphan*/  GTIA_OFFSET_SIZEP1 ; 
 int /*<<< orphan*/  GTIA_OFFSET_SIZEP2 ; 
 int /*<<< orphan*/  GTIA_OFFSET_SIZEP3 ; 
 int /*<<< orphan*/  GTIA_P0PL ; 
 int /*<<< orphan*/  GTIA_P1PL ; 
 int /*<<< orphan*/  GTIA_P2PL ; 
 int /*<<< orphan*/  GTIA_P3PL ; 
 int /*<<< orphan*/  GTIA_PRIOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GTIA_SIZEM ; 
 int /*<<< orphan*/  GTIA_SIZEP0 ; 
 int /*<<< orphan*/  GTIA_SIZEP1 ; 
 int /*<<< orphan*/  GTIA_SIZEP2 ; 
 int /*<<< orphan*/  GTIA_SIZEP3 ; 
 int /*<<< orphan*/ * GTIA_TRIG_latch ; 
 int /*<<< orphan*/  GTIA_VDELAY ; 
 int GTIA_speaker ; 
 int /*<<< orphan*/  PF0PM ; 
 int /*<<< orphan*/  PF1PM ; 
 int /*<<< orphan*/  PF2PM ; 
 int /*<<< orphan*/  PF3PM ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  consol_mask ; 

void FUNC3(UBYTE version)
{
	int next_console_value;	/* ignored */

	FUNC2(&GTIA_HPOSP0, 1);
	FUNC2(&GTIA_HPOSP1, 1);
	FUNC2(&GTIA_HPOSP2, 1);
	FUNC2(&GTIA_HPOSP3, 1);
	FUNC2(&GTIA_HPOSM0, 1);
	FUNC2(&GTIA_HPOSM1, 1);
	FUNC2(&GTIA_HPOSM2, 1);
	FUNC2(&GTIA_HPOSM3, 1);
	FUNC2(&PF0PM, 1);
	FUNC2(&PF1PM, 1);
	FUNC2(&PF2PM, 1);
	FUNC2(&PF3PM, 1);
	FUNC2(&GTIA_M0PL, 1);
	FUNC2(&GTIA_M1PL, 1);
	FUNC2(&GTIA_M2PL, 1);
	FUNC2(&GTIA_M3PL, 1);
	FUNC2(&GTIA_P0PL, 1);
	FUNC2(&GTIA_P1PL, 1);
	FUNC2(&GTIA_P2PL, 1);
	FUNC2(&GTIA_P3PL, 1);
	FUNC2(&GTIA_SIZEP0, 1);
	FUNC2(&GTIA_SIZEP1, 1);
	FUNC2(&GTIA_SIZEP2, 1);
	FUNC2(&GTIA_SIZEP3, 1);
	FUNC2(&GTIA_SIZEM, 1);
	FUNC2(&GTIA_GRAFP0, 1);
	FUNC2(&GTIA_GRAFP1, 1);
	FUNC2(&GTIA_GRAFP2, 1);
	FUNC2(&GTIA_GRAFP3, 1);
	FUNC2(&GTIA_GRAFM, 1);
	FUNC2(&GTIA_COLPM0, 1);
	FUNC2(&GTIA_COLPM1, 1);
	FUNC2(&GTIA_COLPM2, 1);
	FUNC2(&GTIA_COLPM3, 1);
	FUNC2(&GTIA_COLPF0, 1);
	FUNC2(&GTIA_COLPF1, 1);
	FUNC2(&GTIA_COLPF2, 1);
	FUNC2(&GTIA_COLPF3, 1);
	FUNC2(&GTIA_COLBK, 1);
	FUNC2(&GTIA_PRIOR, 1);
	FUNC2(&GTIA_VDELAY, 1);
	FUNC2(&GTIA_GRACTL, 1);

	FUNC2(&consol_mask, 1);
	FUNC1(&GTIA_speaker, 1);
	FUNC1(&next_console_value, 1);
	if (version >= 7)
		FUNC2(GTIA_TRIG_latch, 4);

	FUNC0(GTIA_OFFSET_HPOSP0, GTIA_HPOSP0);
	FUNC0(GTIA_OFFSET_HPOSP1, GTIA_HPOSP1);
	FUNC0(GTIA_OFFSET_HPOSP2, GTIA_HPOSP2);
	FUNC0(GTIA_OFFSET_HPOSP3, GTIA_HPOSP3);
	FUNC0(GTIA_OFFSET_HPOSM0, GTIA_HPOSM0);
	FUNC0(GTIA_OFFSET_HPOSM1, GTIA_HPOSM1);
	FUNC0(GTIA_OFFSET_HPOSM2, GTIA_HPOSM2);
	FUNC0(GTIA_OFFSET_HPOSM3, GTIA_HPOSM3);
	FUNC0(GTIA_OFFSET_SIZEP0, GTIA_SIZEP0);
	FUNC0(GTIA_OFFSET_SIZEP1, GTIA_SIZEP1);
	FUNC0(GTIA_OFFSET_SIZEP2, GTIA_SIZEP2);
	FUNC0(GTIA_OFFSET_SIZEP3, GTIA_SIZEP3);
	FUNC0(GTIA_OFFSET_SIZEM, GTIA_SIZEM);
	FUNC0(GTIA_OFFSET_GRAFP0, GTIA_GRAFP0);
	FUNC0(GTIA_OFFSET_GRAFP1, GTIA_GRAFP1);
	FUNC0(GTIA_OFFSET_GRAFP2, GTIA_GRAFP2);
	FUNC0(GTIA_OFFSET_GRAFP3, GTIA_GRAFP3);
	FUNC0(GTIA_OFFSET_GRAFM, GTIA_GRAFM);
	FUNC0(GTIA_OFFSET_COLPM0, GTIA_COLPM0);
	FUNC0(GTIA_OFFSET_COLPM1, GTIA_COLPM1);
	FUNC0(GTIA_OFFSET_COLPM2, GTIA_COLPM2);
	FUNC0(GTIA_OFFSET_COLPM3, GTIA_COLPM3);
	FUNC0(GTIA_OFFSET_COLPF0, GTIA_COLPF0);
	FUNC0(GTIA_OFFSET_COLPF1, GTIA_COLPF1);
	FUNC0(GTIA_OFFSET_COLPF2, GTIA_COLPF2);
	FUNC0(GTIA_OFFSET_COLPF3, GTIA_COLPF3);
	FUNC0(GTIA_OFFSET_COLBK, GTIA_COLBK);
	FUNC0(GTIA_OFFSET_PRIOR, GTIA_PRIOR);
	FUNC0(GTIA_OFFSET_GRACTL, GTIA_GRACTL);
}