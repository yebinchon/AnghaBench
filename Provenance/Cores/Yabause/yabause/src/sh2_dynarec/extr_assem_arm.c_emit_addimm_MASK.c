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
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (unsigned int,unsigned int,int,int) ; 
 int FUNC6 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC7(unsigned int rs,int imm,unsigned int rt)
{
  FUNC1(rs<16);
  FUNC1(rt<16);
  if(imm!=0) {
    FUNC1(imm>-65536&&imm<65536);
    u32 armval;
    if(FUNC3(imm,&armval)) {
      FUNC0("add %s,%s,#%d\n",regname[rt],regname[rs],imm);
      FUNC4(0xe2800000|FUNC6(rt,rs,0)|armval);
    }else if(FUNC3(-imm,&armval)) {
      FUNC0("sub %s,%s,#%d\n",regname[rt],regname[rs],imm);
      FUNC4(0xe2400000|FUNC6(rt,rs,0)|armval);
    }else if(imm<0) {
      FUNC0("sub %s,%s,#%d\n",regname[rt],regname[rs],(-imm)&0xFF00);
      FUNC0("sub %s,%s,#%d\n",regname[rt],regname[rt],(-imm)&0xFF);
      FUNC4(0xe2400000|FUNC5(rt,rs,(-imm)>>8,8));
      FUNC4(0xe2400000|FUNC5(rt,rt,(-imm)&0xff,0));
    }else{
      FUNC0("add %s,%s,#%d\n",regname[rt],regname[rs],imm&0xFF00);
      FUNC0("add %s,%s,#%d\n",regname[rt],regname[rt],imm&0xFF);
      FUNC4(0xe2800000|FUNC5(rt,rs,imm>>8,8));
      FUNC4(0xe2800000|FUNC5(rt,rt,imm&0xff,0));
    }
  }
  else if(rs!=rt) FUNC2(rs,rt);
}