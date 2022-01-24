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
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC6(int addr,int r,int imm)
{
  FUNC1(imm<128&&imm>=-127);
  FUNC1(r>=0&&r<8);
  FUNC2(r,12,r);
  FUNC0("cmp $%d,%x+%%%s\n",imm,addr,regname[r]);
  FUNC3(0x80);
  FUNC4(2,r,7);
  FUNC5(addr);
  FUNC3(imm);
}