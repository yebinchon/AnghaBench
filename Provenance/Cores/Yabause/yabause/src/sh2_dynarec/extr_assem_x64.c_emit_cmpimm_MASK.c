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
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int rs,int imm)
{
  FUNC0("cmp $%d,%%%s\n",imm,regname[rs]);
  if(rs>=8) FUNC3(0,0,0,rs>>3);
  if(imm<128&&imm>=-128) {
    FUNC1(0x83);
    FUNC2(3,rs&7,7);
    FUNC1(imm);
  }
  else
  {
    FUNC1(0x81);
    FUNC2(3,rs&7,7);
    FUNC4(imm);
  }
}