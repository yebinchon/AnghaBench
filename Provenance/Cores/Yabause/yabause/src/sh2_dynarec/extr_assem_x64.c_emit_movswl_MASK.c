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
typedef  int u64 ;

/* Variables and functions */
 int EBP ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int* regname ; 

void FUNC5(u64 addr, int rt)
{
  if(addr-(u64)out+0x7FFFFFF9>0xFFFFFFFE) {
    FUNC1(addr,rt);
    FUNC0("movswl (%%%s),%%%s\n",regname[rt],regname[rt]);
    FUNC2(0x0F);
    FUNC2(0xBF);
    if(rt!=EBP) {
      FUNC3(0,rt,rt);
    } else {
      FUNC3(1,rt,rt);
      FUNC2(0);
    }
  }
  else
  {
    FUNC0("movswl %x,%%%s\n",addr,regname[rt]);
    FUNC2(0x0F);
    FUNC2(0xBF);
    FUNC3(0,5,rt);
    FUNC4(addr-(int)out-4); // rip-relative
  }
}