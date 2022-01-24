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
 int FUNC0 () ; 
 int FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int FLAG_V ; 
 int FLAG_X ; 
 int FLAG_Z ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

void FUNC9(void)
{
	uint src = FUNC5();
	uint ea  = FUNC0();
	uint dst = FUNC7(ea);
	uint res = FUNC2(dst) - FUNC2(src) - FUNC6();

	FLAG_V = ~res; /* Undefined V behavior */

	if(res > 9)
		res -= 6;
	res += FUNC1(dst) - FUNC1(src);
	FLAG_X = FLAG_C = (res > 0x99) << 8;
	if(FLAG_C)
		res += 0xa0;

	res = FUNC3(res);

	FLAG_V &= res; /* Undefined V behavior part II */
	FLAG_N = FUNC4(res); /* Undefined N behavior */
	FLAG_Z |= res;

	FUNC8(ea, res);
}