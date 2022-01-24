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
 int DX ; 
 int FUNC0 () ; 
 int FLAG_Z ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(void)
{
	uint ea = FUNC0();
	uint src = FUNC1(ea);
	uint mask = 1 << (DX & 7);

	FLAG_Z = src & mask;
	FUNC2(ea, src ^ mask);
}