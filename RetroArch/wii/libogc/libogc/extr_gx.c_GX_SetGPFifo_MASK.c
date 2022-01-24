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
typedef  int /*<<< orphan*/  u32 ;
struct __gxfifo {int cpufifo_ready; int gpfifo_ready; int /*<<< orphan*/  rd_ptr; int /*<<< orphan*/  wt_ptr; int /*<<< orphan*/  rdwt_dst; int /*<<< orphan*/  lo_mark; int /*<<< orphan*/  hi_mark; int /*<<< orphan*/  buf_end; int /*<<< orphan*/  buf_start; int /*<<< orphan*/  fifo_wrap; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  GXFifoObj ;

/* Variables and functions */
 int /*<<< orphan*/  GX_DISABLE ; 
 int /*<<< orphan*/  GX_ENABLE ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * _cpReg ; 
 int _cpgplinked ; 
 int /*<<< orphan*/  _gpfifo ; 
 int _gxgpfifoready ; 
 int /*<<< orphan*/  FUNC11 () ; 

void FUNC12(GXFifoObj *fifo)
{
	u32 level;
	struct __gxfifo *ptr = (struct __gxfifo*)fifo;
	struct __gxfifo *gpfifo = (struct __gxfifo*)&_gpfifo;

	FUNC1(level);
	FUNC7();
	FUNC9(GX_DISABLE,GX_DISABLE);

	if(!fifo) {
		_gxgpfifoready = 0;
		_cpgplinked = 0;
		gpfifo->cpufifo_ready = 0;
		gpfifo->gpfifo_ready = 0;
		FUNC6(GX_FALSE);
		FUNC2(level);
		return;
	}

	gpfifo->buf_start = ptr->buf_start;
	gpfifo->buf_end = ptr->buf_end;
	gpfifo->size = ptr->size;
	gpfifo->hi_mark = ptr->hi_mark;
	gpfifo->lo_mark = ptr->lo_mark;
	gpfifo->rd_ptr = ptr->rd_ptr;
	gpfifo->wt_ptr = ptr->wt_ptr;
	gpfifo->rdwt_dst = ptr->rdwt_dst;
	gpfifo->fifo_wrap = ptr->fifo_wrap;
	gpfifo->cpufifo_ready = ptr->cpufifo_ready;
	gpfifo->gpfifo_ready = 1;
	_gxgpfifoready = 1;

	/* setup fifo base */
	_cpReg[16] = FUNC3(FUNC0(gpfifo->buf_start),0,16);
	_cpReg[17] = FUNC4(FUNC0(gpfifo->buf_start),16,16);

	/* setup fifo end */
	_cpReg[18] = FUNC3(FUNC0(gpfifo->buf_end),0,16);
	_cpReg[19] = FUNC4(FUNC0(gpfifo->buf_end),16,16);

	/* setup hiwater mark */
	_cpReg[20] = FUNC3(gpfifo->hi_mark,0,16);
	_cpReg[21] = FUNC4(gpfifo->hi_mark,16,16);

	/* setup lowater mark */
	_cpReg[22] = FUNC3(gpfifo->lo_mark,0,16);
	_cpReg[23] = FUNC4(gpfifo->lo_mark,16,16);

	/* setup rd<->wd dist */
	_cpReg[24] = FUNC3(gpfifo->rdwt_dst,0,16);
	_cpReg[25] = FUNC4(gpfifo->rdwt_dst,16,16);

	/* setup wt ptr */
	_cpReg[26] = FUNC3(FUNC0(gpfifo->wt_ptr),0,16);
	_cpReg[27] = FUNC4(FUNC0(gpfifo->wt_ptr),16,16);

	/* setup rd ptr */
	_cpReg[28] = FUNC3(FUNC0(gpfifo->rd_ptr),0,16);
	_cpReg[29] = FUNC4(FUNC0(gpfifo->rd_ptr),16,16);
	FUNC11();

	if(FUNC5()) {
		_cpgplinked = 1;
		gpfifo->cpufifo_ready = 1;
		FUNC9(GX_ENABLE,GX_DISABLE);
		FUNC6(GX_TRUE);
	} else {
		_cpgplinked = 0;
		gpfifo->cpufifo_ready = 0;
		FUNC9(GX_DISABLE,GX_DISABLE);
		FUNC6(GX_FALSE);
	}

	FUNC10(GX_TRUE,GX_TRUE);
	FUNC8();
	FUNC2(level);
}