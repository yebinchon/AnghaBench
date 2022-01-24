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
typedef  int u8 ;
typedef  size_t u32 ;
struct TYPE_2__ {int* suSsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 TYPE_1__* __gx ; 

void FUNC2(u8 coord,u8 line_enable,u8 point_enable)
{
	u32 reg = (coord&0x7);
	__gx->suSsize[reg] = (__gx->suSsize[reg]&~0x40000)|(FUNC1(line_enable,18,1));
	__gx->suSsize[reg] = (__gx->suSsize[reg]&~0x80000)|(FUNC1(point_enable,19,1));
	FUNC0(__gx->suSsize[reg]);
}