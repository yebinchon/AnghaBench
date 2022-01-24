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
 int EAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ ** regname ; 

void FUNC5(int rt, int addr, int rs)
{
  if(rt<4) {
    FUNC0("movb %%%cl,%x+%%%s\n",regname[rt][1],addr,regname[rs]);
    FUNC2(0x88);
    if(addr<128&&addr>=-128) {
      FUNC3(1,rs,rt);
      FUNC2(addr);
    }
    else
    {
      FUNC3(2,rs,rt);
      FUNC4(addr);
    }
  }
  else
  {
    FUNC1(EAX,rt);
    FUNC5(EAX,addr,rs==EAX?rt:rs);
    FUNC1(EAX,rt);
  }
}