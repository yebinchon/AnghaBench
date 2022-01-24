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
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int,int,int) ; 
 int FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC6(int imm,int rt)
{
  FUNC1(imm>-65536&&imm<65536);
  u32 armval;
  if(FUNC2(imm,&armval)) {
    FUNC0("adds %s,%s,#%d\n",regname[rt],regname[rt],imm);
    FUNC3(0xe2900000|FUNC5(rt,rt,0)|armval);
  }else if(FUNC2(-imm,&armval)) {
    FUNC0("subs %s,%s,#%d\n",regname[rt],regname[rt],imm);
    FUNC3(0xe2500000|FUNC5(rt,rt,0)|armval);
  }else if(imm<0) {
    FUNC0("sub %s,%s,#%d\n",regname[rt],regname[rt],(-imm)&0xFF00);
    FUNC0("subs %s,%s,#%d\n",regname[rt],regname[rt],(-imm)&0xFF);
    FUNC3(0xe2400000|FUNC4(rt,rt,(-imm)>>8,8));
    FUNC3(0xe2500000|FUNC4(rt,rt,(-imm)&0xff,0));
  }else{
    FUNC0("add %s,%s,#%d\n",regname[rt],regname[rt],imm&0xFF00);
    FUNC0("adds %s,%s,#%d\n",regname[rt],regname[rt],imm&0xFF);
    FUNC3(0xe2800000|FUNC4(rt,rt,imm>>8,8));
    FUNC3(0xe2900000|FUNC4(rt,rt,imm&0xff,0));
  }
}