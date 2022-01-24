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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  Mtx ;

/* Variables and functions */
 scalar_t__ GX_DTTMTX0 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ GX_MTX2x4 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC3 (scalar_t__,int,int) ; 
 scalar_t__ wgPipe ; 

void FUNC4(Mtx mt,u32 texidx,u8 type)
{
	u32 addr = 0;
	u32 rows = (type==GX_MTX2x4)?2:3;

	if(texidx<GX_DTTMTX0) addr = (FUNC3(texidx,2,8));
	else {
		texidx -= GX_DTTMTX0;
		addr = 0x0500 + (FUNC3(texidx,2,8));
	}

	FUNC0(addr,(rows*4));
	if(type==GX_MTX2x4)
		FUNC1(mt,(void*)wgPipe);
	else
		FUNC2(mt,(void*)wgPipe);
}