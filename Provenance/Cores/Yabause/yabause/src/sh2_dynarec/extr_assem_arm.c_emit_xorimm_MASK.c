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
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int,int,int) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC7(int rs,int imm,int rt)
{
  u32 armval;
  if(imm==0) {
    if(rs!=rt) FUNC2(rs,rt);
  }else if(FUNC3(imm,&armval)) {
    FUNC0("eor %s,%s,#%d\n",regname[rt],regname[rs],imm);
    FUNC4(0xe2200000|FUNC6(rt,rs,0)|armval);
  }else{
    FUNC1(imm>0&&imm<65536);
    FUNC0("eor %s,%s,#%d\n",regname[rt],regname[rs],imm&0xFF00);
    FUNC0("eor %s,%s,#%d\n",regname[rt],regname[rs],imm&0xFF);
    FUNC4(0xe2200000|FUNC5(rt,rs,imm>>8,8));
    FUNC4(0xe2200000|FUNC5(rt,rt,imm&0xff,0));
  }
}