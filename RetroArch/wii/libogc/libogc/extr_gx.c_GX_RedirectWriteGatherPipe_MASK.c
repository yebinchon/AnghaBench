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
typedef  int u32 ;
struct __gxfifo {int wt_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GX_DISABLE ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ _cpgplinked ; 
 int /*<<< orphan*/  _cpufifo ; 
 int* _piReg ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

volatile void* FUNC9(void *ptr)
{
	u32 level;
	struct __gxfifo *cpufifo = (struct __gxfifo*)&_cpufifo;

	FUNC3(level);
	FUNC0();
	while(!FUNC1());

	FUNC8(0x0C008000);
	if(_cpgplinked) {
		FUNC5(GX_FALSE);
		FUNC6(GX_DISABLE,GX_DISABLE);
	}
	cpufifo->wt_ptr = (u32)FUNC2(_piReg[5]&~0x04000000);

	_piReg[3] = 0;
	_piReg[4] = 0x04000000;
	_piReg[5] = (((u32)ptr&0x3FFFFFE0)&~0x04000000);
	FUNC7();

	FUNC4(level);

	return (volatile void*)0x0C008000;
}