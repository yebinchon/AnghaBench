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
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 scalar_t__ FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int imm1,unsigned int rt1,int imm2,unsigned int rt2)
{
  FUNC1(imm1,rt1);
  u32 armval;
  if(FUNC2(imm2-imm1,&armval)) {
    FUNC0("add %s,%s,#%d\n",regname[rt2],regname[rt1],imm2-imm1);
    FUNC3(0xe2800000|FUNC4(rt2,rt1,0)|armval);
  }else if(FUNC2(imm1-imm2,&armval)) {
    FUNC0("sub %s,%s,#%d\n",regname[rt2],regname[rt1],imm1-imm2);
    FUNC3(0xe2400000|FUNC4(rt2,rt1,0)|armval);
  }
  else FUNC1(imm2,rt2);
}