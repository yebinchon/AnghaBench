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
struct regstat {char* regmap; } ;

/* Variables and functions */
 int AGEN1 ; 
 int CCREG ; 
 int LOADB_STUB ; 
 int LOADL_STUB ; 
 int LOADS_STUB ; 
 int LOADW_STUB ; 
 scalar_t__ MappedMemoryReadByte ; 
 scalar_t__ MappedMemoryReadLong ; 
 scalar_t__ MappedMemoryReadWord ; 
 int RTEMP ; 
 int TBIT ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  dynarec_local ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int* rt1 ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 scalar_t__ start ; 
 int** stubs ; 

FUNC17(int n)
{
  FUNC0("do_readstub %x\n",start+stubs[n][3]*2);
  FUNC13(256);
  FUNC16(stubs[n][1],(int)out);
  int type=stubs[n][0];
  int i=stubs[n][3];
  int rs=stubs[n][4];
  struct regstat *i_regs=(struct regstat *)stubs[n][5];
  u32 reglist=stubs[n][7];
  signed char *i_regmap=i_regs->regmap;
  int addr=FUNC12(i_regmap,AGEN1+(i&1));
  int rt;
  int ds;

  rt=FUNC12(i_regmap,rt1[i]==TBIT?-1:rt1[i]);
  FUNC1(rs>=0);
  if(addr<0) addr=rt;
  if(addr<0) addr=FUNC12(i_regmap,-1);
  FUNC1(addr>=0);
  FUNC15(reglist);
  if(type==LOADB_STUB) FUNC11(rs,1,0);
  else {if(rs!=0) FUNC6(rs,0);}

  //ds=i_regs!=&regs[i];
  //int real_rs=(itype[i]==LOADLR)?-1:get_reg(i_regmap,rs1[i]);
  //u32 cmask=ds?-1:(0x100f|~i_regs->wasdoingcp);
  //if(!ds) load_all_consts(regs[i].regmap_entry,regs[i].was32,regs[i].wasdirty&~(1<<addr)&(real_rs<0?-1:~(1<<real_rs))&0x100f,i);
  //wb_dirtys(i_regs->regmap_entry,i_regs->was32,i_regs->wasdirty&cmask&~(1<<addr)&(real_rs<0?-1:~(1<<real_rs)));
  //if(!ds) wb_consts(regs[i].regmap_entry,regs[i].was32,regs[i].wasdirty&~(1<<addr)&(real_rs<0?-1:~(1<<real_rs))&~0x100f,i);
  int cc=FUNC12(i_regmap,CCREG);
  if(cc<0) {
    FUNC5(CCREG,2);
  }
  if(type==LOADB_STUB)
    FUNC3((int)MappedMemoryReadByte);
  if(type==LOADW_STUB)
    FUNC3((int)MappedMemoryReadWord);
  if(type==LOADL_STUB)
    FUNC3((int)MappedMemoryReadLong);
  if(type==LOADS_STUB)
  {
    // RTE instruction, pop PC and SR from stack
    int pc=FUNC12(i_regmap,RTEMP);
    FUNC1(pc>=0);
    if(rs<4||rs==12)
      FUNC10(rs,(int)&dynarec_local+24);
    FUNC3((int)MappedMemoryReadLong);
    if(rs==1||rs==2||rs==3||rs==12)
      FUNC9((int)&dynarec_local+24,rs);
    if(pc==0) {
      FUNC10(0,(int)&dynarec_local+24);
    }
    else
    {
      if(pc==1||pc==2||pc==3||pc==12)
        FUNC10(0,(int)&dynarec_local+24);
      else
        FUNC6(0,pc);
      if(rs==0) {
        FUNC9((int)&dynarec_local+24,rs);
        FUNC2(rs,4,rs);
      }else
        FUNC2(rs,4,0);
    }
    FUNC3((int)MappedMemoryReadLong);
    FUNC1(rt>=0);
    if(rt!=0) FUNC6(0,rt);
    if(pc<4||pc==12)
      FUNC9((int)&dynarec_local+24,pc);
  }
  else if(type==LOADB_STUB)
  {
    if(rt>=0) FUNC7(0,rt);
  }
  else if(type==LOADW_STUB)
  {
    if(rt>=0) FUNC8(0,rt);
  }
  else
  {
    if(rt>0) FUNC6(0,rt);
  }
  FUNC14(reglist);
  if(type==LOADS_STUB) FUNC2(rs,8,rs);
  FUNC4(stubs[n][2]); // return address
}