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
typedef  void* uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* DX ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 void* FLAG_Z ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,void*) ; 

void FUNC5(void)
{
	uint src = FUNC3();
	uint dst = FUNC1(DX);
	uint res = dst - src;

	FLAG_N = FUNC2(res);
	FLAG_Z = FUNC1(res);
	FLAG_V = FUNC4(src, dst, res);
	FLAG_C = FUNC0(res);
}