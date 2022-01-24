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
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(uint sr, uint vector, uint pc)
{
	/* INTERNAL REGISTERS (18 words) */
	FUNC1(0);
	FUNC1(0);
	FUNC1(0);
	FUNC1(0);
	FUNC1(0);
	FUNC1(0);
	FUNC1(0);
	FUNC1(0);
	FUNC1(0);

	/* VERSION# (4 bits), INTERNAL INFORMATION */
	FUNC0(0);

	/* INTERNAL REGISTERS (3 words) */
	FUNC1(0);
	FUNC0(0);

	/* DATA INTPUT BUFFER (2 words) */
	FUNC1(0);

	/* INTERNAL REGISTERS (2 words) */
	FUNC1(0);

	/* STAGE B ADDRESS (2 words) */
	FUNC1(0);

	/* INTERNAL REGISTER (4 words) */
	FUNC1(0);
	FUNC1(0);

	/* DATA OUTPUT BUFFER (2 words) */
	FUNC1(0);

	/* INTERNAL REGISTER */
	FUNC0(0);

	/* INTERNAL REGISTER */
	FUNC0(0);

	/* DATA CYCLE FAULT ADDRESS (2 words) */
	FUNC1(0);

	/* INSTRUCTION PIPE STAGE B */
	FUNC0(0);

	/* INSTRUCTION PIPE STAGE C */
	FUNC0(0);

	/* SPECIAL STATUS REGISTER */
	FUNC0(0);

	/* INTERNAL REGISTER */
	FUNC0(0);

	/* 1011, VECTOR OFFSET */
	FUNC0(0xb000 | (vector<<2));

	/* PROGRAM COUNTER */
	FUNC1(pc);

	/* STATUS REGISTER */
	FUNC0(sr);
}