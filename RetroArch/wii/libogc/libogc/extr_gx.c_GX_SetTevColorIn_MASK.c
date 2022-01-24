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
 int FUNC1 (int,int,int) ; 
 TYPE_1__* __gx ; 

void FUNC2(u8 tevstage,u8 a,u8 b,u8 c,u8 d)
{
	u32 reg = (tevstage&0xf);
	__gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0xF000)|(FUNC1(a,12,4));
	__gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0xF00)|(FUNC1(b,8,4));
	__gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0xF0)|(FUNC1(c,4,4));
	__gx->tevColorEnv[reg] = (__gx->tevColorEnv[reg]&~0xf)|(d&0xf);

	FUNC0(__gx->tevColorEnv[reg]);
}