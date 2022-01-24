#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct __gxfifo {scalar_t__ wt_ptr; int /*<<< orphan*/  buf_end; int /*<<< orphan*/  buf_start; } ;
struct TYPE_2__ {scalar_t__ U32; } ;

/* Variables and functions */
 int /*<<< orphan*/  GX_DISABLE ; 
 int /*<<< orphan*/  GX_ENABLE ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ _cpgplinked ; 
 int /*<<< orphan*/  _cpufifo ; 
 int* _piReg ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__* wgPipe ; 

void FUNC9()
{
	u32 level;
	struct __gxfifo *cpufifo = (struct __gxfifo*)&_cpufifo;

	FUNC2(level);

	wgPipe->U32 = 0;
	wgPipe->U32 = 0;
	wgPipe->U32 = 0;
	wgPipe->U32 = 0;
	wgPipe->U32 = 0;
	wgPipe->U32 = 0;
	wgPipe->U32 = 0;
	wgPipe->U32 = 0;

	FUNC8();
	while(!FUNC0());

	FUNC7(0x0C008000);
	_piReg[3] = FUNC1(cpufifo->buf_start);
	_piReg[4] = FUNC1(cpufifo->buf_end);
	_piReg[5] = (((u32)cpufifo->wt_ptr&0x3FFFFFE0)&~0x04000000);
	if(_cpgplinked) {
		FUNC6(GX_TRUE,GX_TRUE);
		FUNC5(GX_ENABLE,GX_DISABLE);
		FUNC4(GX_TRUE);
	}
	FUNC3(level);
}