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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC7(int rs,unsigned int imm,int rt)
{
  FUNC1(rs==rt);
  if(rs==rt) {
    FUNC0("shr %%%s,%d\n",regname[rt],imm);
    FUNC1(imm>0);
    FUNC6(1,0,0,rt>>3);
    if(imm==1) FUNC4(0xD1);
    else FUNC4(0xC1);
    FUNC5(3,rt,5);
    if(imm>1) FUNC4(imm);
  }
  else {
    FUNC2(rs,rt);
    FUNC3(rt,imm,rt);
  }
}