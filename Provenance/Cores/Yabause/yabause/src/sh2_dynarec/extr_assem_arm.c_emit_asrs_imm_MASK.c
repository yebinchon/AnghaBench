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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC4(int rs,unsigned int imm,int rt)
{
  FUNC1(imm>0);
  FUNC1(imm<32);
  FUNC0("asrs %s,%s,#%d\n",regname[rt],regname[rs],imm);
  FUNC2(0xe1b00000|FUNC3(rt,0,rs)|0x40|(imm<<7));
}