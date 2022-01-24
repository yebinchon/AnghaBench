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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(uint pc, uint sr, uint vector)
{
	/* VERSION
	 * NUMBER
	 * INTERNAL INFORMATION, 16 WORDS
	 */
	FUNC1();
	FUNC1();
	FUNC1();
	FUNC1();
	FUNC1();
	FUNC1();
	FUNC1();
	FUNC1();

	/* INSTRUCTION INPUT BUFFER */
	FUNC2(0);

	/* UNUSED, RESERVED (not written) */
	FUNC0();

	/* DATA INPUT BUFFER */
	FUNC2(0);

	/* UNUSED, RESERVED (not written) */
	FUNC0();

	/* DATA OUTPUT BUFFER */
	FUNC2(0);

	/* UNUSED, RESERVED (not written) */
	FUNC0();

	/* FAULT ADDRESS */
	FUNC3(0);

	/* SPECIAL STATUS WORD */
	FUNC2(0);

	/* 1000, VECTOR OFFSET */
	FUNC2(0x8000 | (vector<<2));

	/* PROGRAM COUNTER */
	FUNC3(pc);

	/* STATUS REGISTER */
	FUNC2(sr);
}