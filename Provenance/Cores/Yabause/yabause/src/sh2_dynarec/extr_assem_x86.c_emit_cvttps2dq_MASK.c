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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int,unsigned int) ; 

void FUNC4(unsigned int ssereg1,unsigned int ssereg2)
{
  FUNC0("cvttps2dq xmm%d,xmm%d\n",ssereg1,ssereg2);
  FUNC1(ssereg1<8);
  FUNC1(ssereg2<8);
  FUNC2(0xf3);
  FUNC2(0x0f);
  FUNC2(0x5b);
  FUNC3(3,ssereg1,ssereg2);
}