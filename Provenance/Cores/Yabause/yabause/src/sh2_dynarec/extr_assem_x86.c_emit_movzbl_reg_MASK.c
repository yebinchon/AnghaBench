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
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 scalar_t__* regname ; 

void FUNC5(int rs, int rt)
{
  if(rs<4) {
    FUNC0("movzbl %%%s,%%%s\n",regname[rs]+1,regname[rt]);
    FUNC3(0x0F);
    FUNC3(0xB6);
    FUNC4(3,rs,rt);
  }
  else if(rt<4) {
    FUNC2(rs,rt);
    FUNC5(rt,rt);
  }
  else {
    FUNC1(rs,0xFF,rt);
  }
}