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
struct TYPE_2__ {int* tevColorEnv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GX_TEV_SUB ; 
 int FUNC1 (int,int,int) ; 
 TYPE_1__* __gx ; 

void FUNC2(u8 tevstage,u8 tevop,u8 tevbias,u8 tevscale,u8 clamp,u8 tevregid)
{
	/* set tev op add/sub*/
	u32 reg = (tevstage&0xf);
	__gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0x40000)|(FUNC1(tevop,18,1));
	if(tevop<=GX_TEV_SUB) {
		__gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0x300000)|(FUNC1(tevscale,20,2));
		__gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0x30000)|(FUNC1(tevbias,16,2));
	} else {
		__gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0x300000)|((FUNC1(tevop,19,4))&0x300000);
		__gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0x30000)|0x30000;
	}
	__gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0x80000)|(FUNC1(clamp,19,1));
	__gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0xC00000)|(FUNC1(tevregid,22,2));

	FUNC0(__gx->tevColorEnv[reg]);
}