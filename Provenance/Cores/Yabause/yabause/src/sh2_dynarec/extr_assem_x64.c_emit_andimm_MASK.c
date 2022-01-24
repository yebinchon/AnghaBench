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
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC6(int rs,int imm,int rt)
{
  if(imm==0) {
    FUNC2(rt);
  }
  else if(rs==rt) {
    FUNC0("and $%d,%%%s\n",imm,regname[rt]);
    if(imm<128&&imm>=-128) {
      FUNC3(0x83);
      FUNC4(3,rt,4);
      FUNC3(imm);
    }
    else
    {
      FUNC3(0x81);
      FUNC4(3,rt,4);
      FUNC5(imm);
    }
  }
  else {
    FUNC1(rs,rt);
    FUNC6(rt,imm,rt);
  }
}