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
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
typedef  int s32 ;
struct TYPE_2__ {size_t* chnCntrl; int dirtyState; } ;

/* Variables and functions */
 scalar_t__ GX_AF_NONE ; 
 scalar_t__ GX_AF_SPEC ; 
 int GX_COLOR0A0 ; 
 scalar_t__ GX_DF_NONE ; 
 scalar_t__ FUNC0 (int,int,int) ; 
 int FUNC1 (scalar_t__,int,int) ; 
 TYPE_1__* __gx ; 

void FUNC2(s32 channel,u8 enable,u8 ambsrc,u8 matsrc,u8 litmask,u8 diff_fn,u8 attn_fn)
{
	u32 reg,difffn = (attn_fn==GX_AF_SPEC)?GX_DF_NONE:diff_fn;
	u32 val = (matsrc&1)|(FUNC0(enable,1,1))|(FUNC0(litmask,2,4))|(FUNC0(ambsrc,6,1))|(FUNC0(difffn,7,2))|(FUNC0(((GX_AF_NONE-attn_fn)>0),9,1))|(FUNC0((attn_fn>0),10,1))|(FUNC0((FUNC1(litmask,4,4)),11,4));

	reg = (channel&0x03);
	__gx->chnCntrl[reg] = val;
	__gx->dirtyState |= (0x1000<<reg);

	if(channel==GX_COLOR0A0) {
		__gx->chnCntrl[2] = val;
		__gx->dirtyState |= 0x5000;
	} else {
		__gx->chnCntrl[3] = val;
		__gx->dirtyState |= 0xa000;
	}
}