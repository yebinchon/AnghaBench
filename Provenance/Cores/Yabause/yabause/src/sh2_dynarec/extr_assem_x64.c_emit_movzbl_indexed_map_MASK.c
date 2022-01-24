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
 int EBP ; 
 int ESP ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC7(int addr, int rs, int map, int rt)
{
  if(map<0) FUNC2(addr, rs, rt);
  else {
    FUNC0("addr32 movzbl %x(%%%s,%%%s,4),%%%s\n",addr,regname[rs],regname[map],regname[rt]);
    FUNC1(rs!=ESP);
    FUNC3(0x67);
    FUNC3(0x0F);
    FUNC3(0xB6);
    if(addr==0&&rs!=EBP) {
      FUNC4(0,4,rt);
      FUNC5(2,map,rs);
    }
    else if(addr<128&&addr>=-128) {
      FUNC4(1,4,rt);
      FUNC5(2,map,rs);
      FUNC3(addr);
    }
    else
    {
      FUNC4(2,4,rt);
      FUNC5(2,map,rs);
      FUNC6(addr);
    }
  }
}