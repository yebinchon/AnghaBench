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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int rs,int imm,unsigned int rt)
{
  FUNC1(0);
  u32 armval;
  FUNC2(imm,&armval);
  FUNC0("rsc %s,%s,#%d\n",regname[rt],regname[rs],imm);
  FUNC3(0xe2e00000|FUNC4(rt,rs,0)|armval);
}