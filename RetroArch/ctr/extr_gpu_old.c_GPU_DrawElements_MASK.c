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
typedef  int GPU_Primitive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GPUREG_DRAWELEMENTS ; 
 int /*<<< orphan*/  GPUREG_GEOSTAGE_CONFIG ; 
 int /*<<< orphan*/  GPUREG_GEOSTAGE_CONFIG2 ; 
 int /*<<< orphan*/  GPUREG_INDEXBUFFER_CONFIG ; 
 int /*<<< orphan*/  GPUREG_NUMVERTICES ; 
 int /*<<< orphan*/  GPUREG_PRIMITIVE_CONFIG ; 
 int /*<<< orphan*/  GPUREG_RESTART_PRIMITIVE ; 
 int /*<<< orphan*/  GPUREG_START_DRAW_FUNC0 ; 
 int /*<<< orphan*/  GPUREG_VERTEX_OFFSET ; 
 int /*<<< orphan*/  GPUREG_VTX_FUNC ; 

void FUNC2(GPU_Primitive_t primitive, u32* indexArray, u32 n)
{
	//set primitive type
	FUNC0(GPUREG_PRIMITIVE_CONFIG, 0x2, primitive);
	FUNC0(GPUREG_RESTART_PRIMITIVE, 0x2, 0x00000001);
	//index buffer (TODO : support multiple types)
	FUNC1(GPUREG_INDEXBUFFER_CONFIG, 0x80000000|((u32)indexArray));
	//pass number of vertices
	FUNC1(GPUREG_NUMVERTICES, n);

	FUNC1(GPUREG_VERTEX_OFFSET, 0x00000000);

	FUNC0(GPUREG_GEOSTAGE_CONFIG, 0x2, 0x00000100);
	FUNC0(GPUREG_GEOSTAGE_CONFIG2, 0x2, 0x00000100);

	FUNC0(GPUREG_START_DRAW_FUNC0, 0x1, 0x00000000);
	FUNC1(GPUREG_DRAWELEMENTS, 0x00000001);
	FUNC0(GPUREG_START_DRAW_FUNC0, 0x1, 0x00000001);
	FUNC1(GPUREG_VTX_FUNC, 0x00000001);

	// CHECKME: does this one also require GPUREG_FRAMEBUFFER_FLUSH at the end?
}