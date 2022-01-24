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
typedef  int u8 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 

void FUNC2(u8 comp0,u8 ref0,u8 aop,u8 comp1,u8 ref1)
{
	u32 val = 0;
	val = (FUNC1(aop,22,2))|(FUNC1(comp1,19,3))|(FUNC1(comp0,16,3))|(FUNC1(ref1,8,8))|(ref0&0xff);
	FUNC0(0xf3000000|val);
}