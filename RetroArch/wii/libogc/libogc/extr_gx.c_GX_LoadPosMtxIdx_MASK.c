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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int U8; int U32; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* wgPipe ; 

void FUNC1(u16 mtxidx,u32 pnidx)
{
	wgPipe->U8 = 0x20;
	wgPipe->U32 = ((FUNC0(mtxidx,16,16))|0xb000|(FUNC0(pnidx,2,8)));
}