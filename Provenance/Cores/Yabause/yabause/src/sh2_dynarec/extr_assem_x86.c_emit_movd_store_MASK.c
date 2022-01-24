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
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC4(unsigned int ssereg,unsigned int addr)
{
  FUNC0("movd xmm%d,(%%%s)\n",ssereg,regname[addr]);
  FUNC1(ssereg<8);
  FUNC2(0x66);
  FUNC2(0x0f);
  FUNC2(0x7e);
  if(addr!=EBP) FUNC3(0,addr,ssereg);
  else {FUNC3(1,EBP,ssereg);FUNC2(0);}
}