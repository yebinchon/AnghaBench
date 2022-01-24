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
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int imm,unsigned int rt)
{
  FUNC0("mov $%d,%%%s\n",imm,regname[rt]);
  FUNC1(rt<16);
  if(rt>=8) FUNC3(0,0,0,1);
  FUNC2(0xB8+(rt&7));
  FUNC4(imm);
}