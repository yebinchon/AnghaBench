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
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int rs,int imm,int rt)
{
  if(rs==rt) {
    if(imm!=0) {
      FUNC0("xor $%d,%%%s\n",imm,regname[rt]);
      if(imm<128&&imm>=-128) {
        FUNC2(0x83);
        FUNC3(3,rt,6);
        FUNC2(imm);
      }
      else
      {
        FUNC2(0x81);
        FUNC3(3,rt,6);
        FUNC4(imm);
      }
    }
  }
  else {
    FUNC1(rs,rt);
    FUNC5(rt,imm,rt);
  }
}