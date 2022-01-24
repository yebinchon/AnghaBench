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
struct __gxfifo {int gpfifo_ready; int cpufifo_ready; int wt_ptr; int /*<<< orphan*/  buf_end; int /*<<< orphan*/  buf_start; int /*<<< orphan*/  fifo_wrap; int /*<<< orphan*/  rdwt_dst; int /*<<< orphan*/  rd_ptr; int /*<<< orphan*/  lo_mark; int /*<<< orphan*/  hi_mark; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  GXFifoObj ;

/* Variables and functions */
 int /*<<< orphan*/  GX_DISABLE ; 
 int /*<<< orphan*/  GX_ENABLE ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int _cpgplinked ; 
 int /*<<< orphan*/  _cpufifo ; 
 int _gxcpufifoready ; 
 int* _piReg ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(GXFifoObj *fifo)
{
	u32 level;
	struct __gxfifo *ptr = (struct __gxfifo*)fifo;
	struct __gxfifo *cpufifo = (struct __gxfifo*)&_cpufifo;

	FUNC1(level);
	if(!fifo) {
		_gxcpufifoready = 0;
		_cpgplinked = 0;
		cpufifo->gpfifo_ready = 0;
		cpufifo->cpufifo_ready = 0;
		FUNC2(level);
		return;
	}

	cpufifo->buf_start = ptr->buf_start;
	cpufifo->buf_end = ptr->buf_end;
	cpufifo->size = ptr->size;
	cpufifo->hi_mark = ptr->hi_mark;
	cpufifo->lo_mark = ptr->lo_mark;
	cpufifo->rd_ptr = ptr->rd_ptr;
	cpufifo->wt_ptr = ptr->wt_ptr;
	cpufifo->rdwt_dst = ptr->rdwt_dst;
	cpufifo->fifo_wrap = ptr->fifo_wrap;
	cpufifo->gpfifo_ready = ptr->gpfifo_ready;
	cpufifo->cpufifo_ready = 1;

	_gxcpufifoready = 1;
	if(FUNC3()) {
		_cpgplinked = 1;
		cpufifo->gpfifo_ready = 1;

		_piReg[3] = FUNC0(cpufifo->buf_start);
		_piReg[4] = FUNC0(cpufifo->buf_end);
		_piReg[5] = (cpufifo->wt_ptr&0x1FFFFFE0);

		FUNC6(GX_TRUE,GX_TRUE);
		FUNC5(GX_ENABLE,GX_DISABLE);
		FUNC4(GX_TRUE);

		FUNC2(level);
		return;
	}

	if(_cpgplinked) {
		FUNC4(GX_FALSE);
		_cpgplinked = 0;
	}

	FUNC5(GX_DISABLE,GX_DISABLE);

	_piReg[3] = FUNC0(cpufifo->buf_start);
	_piReg[4] = FUNC0(cpufifo->buf_end);
	_piReg[5] = (cpufifo->wt_ptr&0x1FFFFFE0);
	FUNC7();

	FUNC2(level);
}