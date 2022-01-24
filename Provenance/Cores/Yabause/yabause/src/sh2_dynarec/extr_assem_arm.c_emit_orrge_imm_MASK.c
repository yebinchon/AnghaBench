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
 scalar_t__ FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int,int,int) ; 
 int FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC6(int rs,int imm,int rt)
{
  u32 armval;
  if(FUNC2(imm,&armval)) {
    FUNC0("orrge %s,%s,#%d\n",regname[rt],regname[rs],imm);
    FUNC3(0xa3800000|FUNC5(rt,rs,0)|armval);
  }else{
    FUNC1(0); // FIXME
    FUNC0("orr %s,%s,#%d\n",regname[rt],regname[rs],imm&0xFF00);
    FUNC0("orr %s,%s,#%d\n",regname[rt],regname[rs],imm&0xFF);
    FUNC3(0xe3800000|FUNC4(rt,rs,imm>>8,8));
    FUNC3(0xe3800000|FUNC4(rt,rt,imm&0xff,0));
  }
}