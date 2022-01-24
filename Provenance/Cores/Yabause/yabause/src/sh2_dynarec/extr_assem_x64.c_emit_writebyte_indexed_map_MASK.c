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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ ** regname ; 

void FUNC8(int rt, int addr, int rs, int map, int temp)
{
  if(map<0) FUNC2(rt, addr, rs);
  else
  {
    FUNC0("movb %%%cl,%x(%%%s,%%%s,1)\n",regname[rt][1],addr,regname[rs],regname[map]);
    FUNC1(rs!=ESP);
    if(rt>=4||rs>=8||map>=8) FUNC5(0,rt>>3,map>>3,rs>>3);
    FUNC3(0x88);
    if(addr==0&&rs!=EBP) {
      FUNC4(0,4,rt);
      FUNC6(0,map,rs);
    }
    else if(addr<128&&addr>=-128) {
      FUNC4(1,4,rt);
      FUNC6(0,map,rs);
      FUNC3(addr);
    }
    else
    {
      FUNC4(2,4,rt);
      FUNC6(0,map,rs);
      FUNC7(addr);
    }
  }
}