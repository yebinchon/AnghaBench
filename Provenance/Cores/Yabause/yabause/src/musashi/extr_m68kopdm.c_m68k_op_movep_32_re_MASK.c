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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	uint ea = FUNC0();
	uint src = DX;

	FUNC2(ea, FUNC1(src >> 24));
	FUNC2(ea += 2, FUNC1(src >> 16));
	FUNC2(ea += 2, FUNC1(src >> 8));
	FUNC2(ea += 2, FUNC1(src));
}