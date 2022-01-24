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
typedef  void* u32 ;
struct TYPE_2__ {int perf0Mode; int perf1Mode; int cpPerfMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
#define  GX_PERF0_AVG_QUAD_CNT 186 
#define  GX_PERF0_CLIP_CLKS 185 
#define  GX_PERF0_CLIP_RATIO 184 
#define  GX_PERF0_CLIP_VTX 183 
#define  GX_PERF0_CLOCKS 182 
#define  GX_PERF0_NONE 181 
#define  GX_PERF0_QUAD_0CVG 180 
#define  GX_PERF0_QUAD_1CVG 179 
#define  GX_PERF0_QUAD_2CVG 178 
#define  GX_PERF0_QUAD_3CVG 177 
#define  GX_PERF0_QUAD_4CVG 176 
#define  GX_PERF0_QUAD_NON0CVG 175 
#define  GX_PERF0_TRIANGLES 174 
#define  GX_PERF0_TRIANGLES_0CLR 173 
#define  GX_PERF0_TRIANGLES_0TEX 172 
#define  GX_PERF0_TRIANGLES_1CLR 171 
#define  GX_PERF0_TRIANGLES_1TEX 170 
#define  GX_PERF0_TRIANGLES_2CLR 169 
#define  GX_PERF0_TRIANGLES_2TEX 168 
#define  GX_PERF0_TRIANGLES_3TEX 167 
#define  GX_PERF0_TRIANGLES_4TEX 166 
#define  GX_PERF0_TRIANGLES_5TEX 165 
#define  GX_PERF0_TRIANGLES_6TEX 164 
#define  GX_PERF0_TRIANGLES_7TEX 163 
#define  GX_PERF0_TRIANGLES_8TEX 162 
#define  GX_PERF0_TRIANGLES_CULLED 161 
#define  GX_PERF0_TRIANGLES_PASSED 160 
#define  GX_PERF0_TRIANGLES_SCISSORED 159 
#define  GX_PERF0_VERTICES 158 
#define  GX_PERF0_XF_BOT_CLKS 157 
#define  GX_PERF0_XF_LIT_CLKS 156 
#define  GX_PERF0_XF_REGLD_CLKS 155 
#define  GX_PERF0_XF_REGRD_CLKS 154 
#define  GX_PERF0_XF_WAIT_IN 153 
#define  GX_PERF0_XF_WAIT_OUT 152 
#define  GX_PERF0_XF_XFRM_CLKS 151 
#define  GX_PERF1_CALL_REQ 150 
#define  GX_PERF1_CLOCKS 149 
#define  GX_PERF1_CP_ALL_REQ 148 
#define  GX_PERF1_FIFO_REQ 147 
#define  GX_PERF1_NONE 146 
#define  GX_PERF1_TC_CHECK1_2 145 
#define  GX_PERF1_TC_CHECK3_4 144 
#define  GX_PERF1_TC_CHECK5_6 143 
#define  GX_PERF1_TC_CHECK7_8 142 
#define  GX_PERF1_TC_MISS 141 
#define  GX_PERF1_TEXELS 140 
#define  GX_PERF1_TX_IDLE 139 
#define  GX_PERF1_TX_MEMSTALL 138 
#define  GX_PERF1_TX_REGS 137 
#define  GX_PERF1_VC_ALL_STALLS 136 
#define  GX_PERF1_VC_ELEMQ_FULL 135 
#define  GX_PERF1_VC_MEMREQ_FULL 134 
#define  GX_PERF1_VC_MISSQ_FULL 133 
#define  GX_PERF1_VC_MISSREP_FULL 132 
#define  GX_PERF1_VC_MISS_REQ 131 
#define  GX_PERF1_VC_STATUS7 130 
#define  GX_PERF1_VC_STREAMBUF_LOW 129 
#define  GX_PERF1_VERTICES 128 
 TYPE_1__* __gx ; 
 int* _cpReg ; 

void FUNC3(u32 perf0,u32 perf1)
{
	// check last setted perf0 counters
	if(__gx->perf0Mode>=GX_PERF0_TRIANGLES && __gx->perf0Mode<GX_PERF0_QUAD_0CVG)
		FUNC0(0x23000000);
	else if(__gx->perf0Mode>=GX_PERF0_QUAD_0CVG && __gx->perf0Mode<GX_PERF0_CLOCKS)
		FUNC0(0x24000000);
	else if(__gx->perf0Mode>=GX_PERF0_VERTICES && __gx->perf0Mode<=GX_PERF0_CLOCKS)
		FUNC2(0x1006,0);

	// check last setted perf1 counters
	if(__gx->perf1Mode>=GX_PERF1_VC_ELEMQ_FULL && __gx->perf1Mode<GX_PERF1_FIFO_REQ) {
		__gx->cpPerfMode = (__gx->cpPerfMode&~0xf0);
		FUNC1(0x20,__gx->cpPerfMode);
	} else if(__gx->perf1Mode>=GX_PERF1_FIFO_REQ && __gx->perf1Mode<GX_PERF1_CLOCKS) {
		_cpReg[3] = 0;
	} else if(__gx->perf1Mode>=GX_PERF1_TEXELS && __gx->perf1Mode<=GX_PERF1_CLOCKS) {
		FUNC0(0x67000000);
	}

	__gx->perf0Mode = perf0;
	switch(__gx->perf0Mode) {
		case GX_PERF0_CLOCKS:
			FUNC2(0x1006,0x00000273);
			break;
		case GX_PERF0_VERTICES:
			FUNC2(0x1006,0x0000014a);
			break;
		case GX_PERF0_CLIP_VTX:
			FUNC2(0x1006,0x0000016b);
			break;
		case GX_PERF0_CLIP_CLKS:
			FUNC2(0x1006,0x00000084);
			break;
		case GX_PERF0_XF_WAIT_IN:
			FUNC2(0x1006,0x000000c6);
			break;
		case GX_PERF0_XF_WAIT_OUT:
			FUNC2(0x1006,0x00000210);
			break;
		case GX_PERF0_XF_XFRM_CLKS:
			FUNC2(0x1006,0x00000252);
			break;
		case GX_PERF0_XF_LIT_CLKS:
			FUNC2(0x1006,0x00000231);
			break;
		case GX_PERF0_XF_BOT_CLKS:
			FUNC2(0x1006,0x000001ad);
			break;
		case GX_PERF0_XF_REGLD_CLKS:
			FUNC2(0x1006,0x000001ce);
			break;
		case GX_PERF0_XF_REGRD_CLKS:
			FUNC2(0x1006,0x00000021);
			break;
		case GX_PERF0_CLIP_RATIO:
			FUNC2(0x1006,0x00000153);
			break;
		case GX_PERF0_TRIANGLES:
			FUNC0(0x2300AE7F);
			break;
		case GX_PERF0_TRIANGLES_CULLED:
			FUNC0(0x23008E7F);
			break;
		case GX_PERF0_TRIANGLES_PASSED:
			FUNC0(0x23009E7F);
			break;
		case GX_PERF0_TRIANGLES_SCISSORED:
			FUNC0(0x23001E7F);
			break;
		case GX_PERF0_TRIANGLES_0TEX:
			FUNC0(0x2300AC3F);
			break;
		case GX_PERF0_TRIANGLES_1TEX:
			FUNC0(0x2300AC7F);
			break;
		case GX_PERF0_TRIANGLES_2TEX:
			FUNC0(0x2300ACBF);
			break;
		case GX_PERF0_TRIANGLES_3TEX:
			FUNC0(0x2300ACFF);
			break;
		case GX_PERF0_TRIANGLES_4TEX:
			FUNC0(0x2300AD3F);
			break;
		case GX_PERF0_TRIANGLES_5TEX:
			FUNC0(0x2300AD7F);
			break;
		case GX_PERF0_TRIANGLES_6TEX:
			FUNC0(0x2300ADBF);
			break;
		case GX_PERF0_TRIANGLES_7TEX:
			FUNC0(0x2300ADFF);
			break;
		case GX_PERF0_TRIANGLES_8TEX:
			FUNC0(0x2300AE3F);
			break;
		case GX_PERF0_TRIANGLES_0CLR:
			FUNC0(0x2300A27F);
			break;
		case GX_PERF0_TRIANGLES_1CLR:
			FUNC0(0x2300A67F);
			break;
		case GX_PERF0_TRIANGLES_2CLR:
			FUNC0(0x2300AA7F);
			break;
		case GX_PERF0_QUAD_0CVG:
			FUNC0(0x2402C0C6);
			break;
		case GX_PERF0_QUAD_NON0CVG:
			FUNC0(0x2402C16B);
			break;
		case GX_PERF0_QUAD_1CVG:
			FUNC0(0x2402C0E7);
			break;
		case GX_PERF0_QUAD_2CVG:
			FUNC0(0x2402C108);
			break;
		case GX_PERF0_QUAD_3CVG:
			FUNC0(0x2402C129);
			break;
		case GX_PERF0_QUAD_4CVG:
			FUNC0(0x2402C14A);
			break;
		case GX_PERF0_AVG_QUAD_CNT:
			FUNC0(0x2402C1AD);
			break;
		case GX_PERF0_NONE:
			break;
	}

	__gx->perf1Mode = perf1;
	switch(__gx->perf1Mode) {
		case GX_PERF1_CLOCKS:
			FUNC0(0x67000042);
			break;
		case GX_PERF1_TEXELS:
			FUNC0(0x67000084);
			break;
		case GX_PERF1_TX_IDLE:
			FUNC0(0x67000063);
			break;
		case GX_PERF1_TX_REGS:
			FUNC0(0x67000129);
			break;
		case GX_PERF1_TX_MEMSTALL:
			FUNC0(0x67000252);
			break;
		case GX_PERF1_TC_CHECK1_2:
			FUNC0(0x67000021);
			break;
		case GX_PERF1_TC_CHECK3_4:
			FUNC0(0x6700014b);
			break;
		case GX_PERF1_TC_CHECK5_6:
			FUNC0(0x6700018d);
			break;
		case GX_PERF1_TC_CHECK7_8:
			FUNC0(0x670001cf);
			break;
		case GX_PERF1_TC_MISS:
			FUNC0(0x67000211);
			break;
		case GX_PERF1_VC_ELEMQ_FULL:
			__gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x20;
			FUNC1(0x20,__gx->cpPerfMode);
			break;
		case GX_PERF1_VC_MISSQ_FULL:
			__gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x30;
			FUNC1(0x20,__gx->cpPerfMode);
			break;
		case GX_PERF1_VC_MEMREQ_FULL:
			__gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x40;
			FUNC1(0x20,__gx->cpPerfMode);
			break;
		case GX_PERF1_VC_STATUS7:
			__gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x50;
			FUNC1(0x20,__gx->cpPerfMode);
			break;
		case GX_PERF1_VC_MISSREP_FULL:
			__gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x60;
			FUNC1(0x20,__gx->cpPerfMode);
			break;
		case GX_PERF1_VC_STREAMBUF_LOW:
			__gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x70;
			FUNC1(0x20,__gx->cpPerfMode);
			break;
		case GX_PERF1_VC_ALL_STALLS:
			__gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x90;
			FUNC1(0x20,__gx->cpPerfMode);
			break;
		case GX_PERF1_VERTICES:
			__gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x80;
			FUNC1(0x20,__gx->cpPerfMode);
			break;
		case GX_PERF1_FIFO_REQ:
			_cpReg[3] = 2;
			break;
		case GX_PERF1_CALL_REQ:
			_cpReg[3] = 3;
			break;
		case GX_PERF1_VC_MISS_REQ:
			_cpReg[3] = 4;
			break;
		case GX_PERF1_CP_ALL_REQ:
			_cpReg[3] = 5;
			break;
		case GX_PERF1_NONE:
			break;
	}

}