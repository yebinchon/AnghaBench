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
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int addr, int rs, int rt)
{
  FUNC0("mov %x+%%%s,%%%s\n",addr,regname[rs],regname[rt]);
  FUNC1(0x8B);
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