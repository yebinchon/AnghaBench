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
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int rs,unsigned int imm,int rt)
{
  FUNC1(imm>0);
  FUNC1(imm<32);
  if(imm==1)
    FUNC2(rs,rs,rt);
  else {
    FUNC0("lsl %s,%s,#%d\n",regname[rt],regname[rs],imm);
    FUNC3(0xe1a00000|FUNC4(rt,0,rs)|(imm<<7));
  }
}