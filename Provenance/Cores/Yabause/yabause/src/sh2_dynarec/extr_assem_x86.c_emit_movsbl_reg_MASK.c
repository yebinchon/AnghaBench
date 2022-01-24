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
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 scalar_t__* regname ; 

void FUNC6(int rs, int rt)
{
  if(rs<4) {
    FUNC0("movsbl %%%s,%%%s\n",regname[rs]+1,regname[rt]);
    FUNC4(0x0F);
    FUNC4(0xBE);
    FUNC5(3,rs,rt);
  }
  else if(rt<4) {
    FUNC1(rs,rt);
    FUNC6(rt,rt);
  }
  else {
    FUNC3(rs,24,rt);
    FUNC2(rt,24,rt);
  }
}