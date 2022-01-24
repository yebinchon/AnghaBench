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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC4(int imm,int rt)
{
  FUNC0("add $%d,%%%s\n",imm,regname[rt]);
  if(imm<128&&imm>=-128) {
    FUNC1(0x83);
    FUNC2(3,rt,0);
    FUNC1(imm);
  }
  else
  {
    FUNC1(0x81);
    FUNC2(3,rt,0);
    FUNC3(imm);
  }
}