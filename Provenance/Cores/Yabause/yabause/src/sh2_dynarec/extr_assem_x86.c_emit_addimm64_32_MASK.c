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
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int rsh,int rsl,int imm,int rth,int rtl)
{
  if(rsh==rth&&rsl==rtl) {
    FUNC0("add $%d,%%%s\n",imm,regname[rtl]);
    if(imm<128&&imm>=-128) {
      FUNC2(0x83);
      FUNC3(3,rtl,0);
      FUNC2(imm);
    }
    else
    {
      FUNC2(0x81);
      FUNC3(3,rtl,0);
      FUNC4(imm);
    }
    FUNC0("adc $%d,%%%s\n",imm>>31,regname[rth]);
    FUNC2(0x83);
    FUNC3(3,rth,2);
    FUNC2(imm>>31);
  }
  else {
    FUNC1(rsh,rth);
    FUNC1(rsl,rtl);
    FUNC5(rth,rtl,imm,rth,rtl);
  }
}