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
typedef  int u16 ;
struct TYPE_2__ {int texCoordManually; int* suSsize; int* suTsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 TYPE_1__* __gx ; 

void FUNC2(u8 texcoord,u8 enable,u16 ss,u16 ts)
{
	u32 reg;

	__gx->texCoordManually = (__gx->texCoordManually&~(FUNC1(1,texcoord,1)))|(FUNC1(enable,texcoord,1));
	if(!enable) return;

	reg = (texcoord&0x7);
	__gx->suSsize[reg] = (__gx->suSsize[reg]&~0xffff)|((ss-1)&0xffff);
	__gx->suTsize[reg] = (__gx->suTsize[reg]&~0xffff)|((ts-1)&0xffff);

	FUNC0(__gx->suSsize[reg]);
	FUNC0(__gx->suTsize[reg]);
}