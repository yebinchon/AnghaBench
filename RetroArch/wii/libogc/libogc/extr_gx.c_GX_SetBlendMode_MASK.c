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
struct TYPE_2__ {int peCMode0; } ;

/* Variables and functions */
 scalar_t__ GX_BM_BLEND ; 
 scalar_t__ GX_BM_LOGIC ; 
 scalar_t__ GX_BM_SUBTRACT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__,int,int) ; 
 TYPE_1__* __gx ; 

void FUNC2(u8 type,u8 src_fact,u8 dst_fact,u8 op)
{
	__gx->peCMode0 = (__gx->peCMode0&~0x1);
	if(type==GX_BM_BLEND || type==GX_BM_SUBTRACT) __gx->peCMode0 |= 0x1;

	__gx->peCMode0 = (__gx->peCMode0&~0x800);
	if(type==GX_BM_SUBTRACT) __gx->peCMode0 |= 0x800;

	__gx->peCMode0 = (__gx->peCMode0&~0x2);
	if(type==GX_BM_LOGIC) __gx->peCMode0 |= 0x2;

	__gx->peCMode0 = (__gx->peCMode0&~0xF000)|(FUNC1(op,12,4));
	__gx->peCMode0 = (__gx->peCMode0&~0xE0)|(FUNC1(dst_fact,5,3));
	__gx->peCMode0 = (__gx->peCMode0&~0x700)|(FUNC1(src_fact,8,3));

	FUNC0(__gx->peCMode0);
}