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
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int addr, int map, int imm)
{
  if(map<0) {
    FUNC0("andb $0x%x,(%%%s)\n",imm,regname[addr]);
    FUNC1(addr!=ESP);
    FUNC2(0x80);
    FUNC3(0,addr,4);
  }
  else
  {
    FUNC0("andb $0x%x,(%%%s,%%%s,1)\n",imm,regname[addr],regname[map]);
    FUNC1(addr!=ESP);
    FUNC2(0x80);
    FUNC3(0,4,4);
    if(addr!=EBP) {
      FUNC4(0,map,addr);
    }
    else {
      FUNC1(addr!=map);
      FUNC4(0,addr,map);
    }
  }
  FUNC2(imm);
}