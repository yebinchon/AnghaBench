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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GPUREG_COLORBUFFER_FORMAT ; 
 int /*<<< orphan*/  GPUREG_COLORBUFFER_READ ; 
 int /*<<< orphan*/  GPUREG_DEPTHBUFFER_FORMAT ; 
 int /*<<< orphan*/  GPUREG_DEPTHBUFFER_LOC ; 
 int /*<<< orphan*/  GPUREG_FRAMEBUFFER_BLOCK32 ; 
 int /*<<< orphan*/  GPUREG_FRAMEBUFFER_FLUSH ; 
 int /*<<< orphan*/  GPUREG_FRAMEBUFFER_INVALIDATE ; 
 int /*<<< orphan*/  GPUREG_RENDERBUF_DIM ; 
 int /*<<< orphan*/  GPUREG_SCISSORTEST_MODE ; 
 int /*<<< orphan*/  GPUREG_VIEWPORT_WIDTH ; 
 int /*<<< orphan*/  GPUREG_VIEWPORT_XY ; 
 int FUNC2 (float) ; 
 int FUNC3 (float) ; 

void FUNC4(u32* depthBuffer, u32* colorBuffer, u32 x, u32 y, u32 w, u32 h)
{
	u32 param[0x4];
	float fw=(float)w;
	float fh=(float)h;

	FUNC1(GPUREG_FRAMEBUFFER_FLUSH, 0x00000001);
	FUNC1(GPUREG_FRAMEBUFFER_INVALIDATE, 0x00000001);

	u32 f116e=0x01000000|(((h-1)&0xFFF)<<12)|(w&0xFFF);

	param[0x0]=((u32)depthBuffer)>>3;
	param[0x1]=((u32)colorBuffer)>>3;
	param[0x2]=f116e;
	FUNC0(GPUREG_DEPTHBUFFER_LOC, param, 0x00000003);

	FUNC1(GPUREG_RENDERBUF_DIM, f116e);
	FUNC1(GPUREG_DEPTHBUFFER_FORMAT, 0x00000003); //depth buffer format
	FUNC1(GPUREG_COLORBUFFER_FORMAT, 0x00000002); //color buffer format
	FUNC1(GPUREG_FRAMEBUFFER_BLOCK32, 0x00000000); //?

	param[0x0]=FUNC2(fw/2);
	param[0x1]=FUNC3(2.0f / fw) << 1;
	param[0x2]=FUNC2(fh/2);
	param[0x3]=FUNC3(2.0f / fh) << 1;
	FUNC0(GPUREG_VIEWPORT_WIDTH, param, 0x00000004);

	FUNC1(GPUREG_VIEWPORT_XY, (y<<16)|(x&0xFFFF));

	param[0x0]=0x00000000;
	param[0x1]=0x00000000;
	param[0x2]=((h-1)<<16)|((w-1)&0xFFFF);
	FUNC0(GPUREG_SCISSORTEST_MODE, param, 0x00000003);

	//enable depth buffer
	param[0x0]=0x0000000F;
	param[0x1]=0x0000000F;
	param[0x2]=0x00000002;
	param[0x3]=0x00000002;
	FUNC0(GPUREG_COLORBUFFER_READ, param, 0x00000004);
}