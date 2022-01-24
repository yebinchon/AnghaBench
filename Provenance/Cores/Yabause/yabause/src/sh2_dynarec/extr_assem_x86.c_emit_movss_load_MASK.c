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
 unsigned int EBP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC4(unsigned int addr,unsigned int ssereg)
{
  FUNC0("movss (%%%s),xmm%d\n",regname[addr],ssereg);
  FUNC1(ssereg<8);
  FUNC2(0xf3);
  FUNC2(0x0f);
  FUNC2(0x10);
  if(addr!=EBP) FUNC3(0,addr,ssereg);
  else {FUNC3(1,EBP,ssereg);FUNC2(0);}
}