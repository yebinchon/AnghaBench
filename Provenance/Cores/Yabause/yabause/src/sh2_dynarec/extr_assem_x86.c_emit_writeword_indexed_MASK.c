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
 int ESP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int rt, int addr, int rs)
{
  FUNC0("mov %%%s,%x+%%%s\n",regname[rt],addr,regname[rs]);
  FUNC1(0x89);
  if(addr<128&&addr>=-128) {
    FUNC2(1,rs,rt);
    if(rs==ESP) FUNC3(0,4,4);
    FUNC1(addr);
  }
  else
  {
    FUNC2(2,rs,rt);
    if(rs==ESP) FUNC3(0,4,4);
    FUNC4(addr);
  }
}