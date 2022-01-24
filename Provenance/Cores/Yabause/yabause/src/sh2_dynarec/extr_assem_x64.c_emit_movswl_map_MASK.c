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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC6(u64 addr, int map, int rt)
{
  if(map<0) FUNC1(addr, rt);
  else
  {
    //FIXME
    FUNC0("addr32 movswl %x(,%%%s,4),%%%s\n",addr,regname[map],regname[rt]);
    FUNC2(0x67);
    FUNC2(0x0F);
    FUNC2(0xBF);
    FUNC3(0,4,rt);
    FUNC4(2,map,5);
    FUNC5(addr);
  }
}