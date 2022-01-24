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
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int rs,unsigned int imm,int rt)
{
  if(rs==rt) {
    FUNC0("shl %%%s,%d\n",regname[rt],imm);
    FUNC1(imm>0);
    if(imm==1) FUNC3(0xD1);
    else FUNC3(0xC1);
    FUNC4(3,rt,4);
    if(imm>1) FUNC3(imm);
  }
  else {
    FUNC2(rs,rt);
    FUNC5(rt,imm,rt);
  }
}