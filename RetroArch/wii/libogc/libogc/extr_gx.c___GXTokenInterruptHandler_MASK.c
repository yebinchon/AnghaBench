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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;

/* Variables and functions */
 int* _peReg ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(u32 irq,void *ctx)
{
	u16 token = _peReg[7];

	if(&tokenCB)
		FUNC0(token);

	_peReg[5] = (_peReg[5]&~0x04)|0x04;
}