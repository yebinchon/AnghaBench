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
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC4(int rs,int imm,int rt)
{
  u32 armval;
  FUNC1(imm,&armval);
  FUNC0("bicne %s,%s,#%d\n",regname[rt],regname[rs],imm);
  FUNC2(0x13c00000|FUNC3(rt,rs,0)|armval);
}