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
typedef  int /*<<< orphan*/  u32 ;
struct __gxfifo {int rd_ptr; int wt_ptr; scalar_t__ rdwt_dst; } ;
struct TYPE_2__ {int cpCRreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* __gx ; 
 int* _cpReg ; 
 scalar_t__ _cpgplinked ; 
 int /*<<< orphan*/  _cpufifo ; 
 int /*<<< orphan*/  _gpfifo ; 
 int /*<<< orphan*/  _gxgpfifoready ; 
 int* _piReg ; 
 int /*<<< orphan*/ * breakPtCB ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11()
{
	u32 level;
	struct __gxfifo *gpfifo = (struct __gxfifo*)&_gpfifo;
	struct __gxfifo *cpufifo = (struct __gxfifo*)&_cpufifo;

	if(!_gxgpfifoready) return;

	FUNC1(level);
	FUNC6();
	FUNC8(FALSE,FALSE);

	gpfifo->rd_ptr = gpfifo->wt_ptr;
	gpfifo->rdwt_dst = 0;

	/* setup rd<->wd dist */
	_cpReg[24] = FUNC3(gpfifo->rdwt_dst,0,16);
	_cpReg[25] = FUNC4(gpfifo->rdwt_dst,16,16);

	/* setup wt ptr */
	_cpReg[26] = FUNC3(FUNC0(gpfifo->wt_ptr),0,16);
	_cpReg[27] = FUNC4(FUNC0(gpfifo->wt_ptr),16,16);

	/* setup rd ptr */
	_cpReg[28] = FUNC3(FUNC0(gpfifo->rd_ptr),0,16);
	_cpReg[29] = FUNC4(FUNC0(gpfifo->rd_ptr),16,16);
	FUNC10();

	if(_cpgplinked) {
		cpufifo->rd_ptr = gpfifo->rd_ptr;
		cpufifo->wt_ptr = gpfifo->wt_ptr;
		cpufifo->rdwt_dst = gpfifo->rdwt_dst;

		_piReg[5] = (cpufifo->wt_ptr&0x1FFFFFE0);
		FUNC8(TRUE,FALSE);
		FUNC5(TRUE);
	}
	__gx->cpCRreg &= ~0x22;
	_cpReg[1] = __gx->cpCRreg;
	breakPtCB = NULL;

	FUNC9(TRUE,TRUE);
	FUNC7();
	FUNC2(level);
}