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

void FUNC4(int rs,int imm)
{
  FUNC0("test $0x%x,%%%s\n",imm,regname[rs]);
  if(imm<128&&imm>=-128&&rs<4) {
    FUNC1(0xF6);
    FUNC2(3,rs,0);
    FUNC1(imm);
  }
  else
  {
    FUNC1(0xF7);
    FUNC2(3,rs,0);
    FUNC3(imm);
  }
}