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
struct regstat {scalar_t__* regmap; int /*<<< orphan*/  dirty; } ;
typedef  int pointer ;

/* Variables and functions */
 scalar_t__ CCREG ; 
 int /*<<< orphan*/  CC_STUB ; 
 int CLOCK_DIVIDER ; 
 char HOST_CCREG ; 
 unsigned int HOST_REGS ; 
 int /*<<< orphan*/  LOADL_STUB ; 
 int MMREG ; 
 int MOREG ; 
 int SR ; 
 int /*<<< orphan*/  STOREL_STUB ; 
 int TAKEN ; 
 int VBR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* ccadj ; 
 int* cycles ; 
 int FUNC2 (int,int,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char) ; 
 void* FUNC16 (scalar_t__*,int) ; 
 int* imm ; 
 int /*<<< orphan*/  is_delayslot ; 
 int** jump_vaddr_reg ; 
 int* opcode ; 
 int* opcode2 ; 
 int* opcode3 ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 size_t slave ; 
 int start ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

void FUNC19(int i,struct regstat *i_regs)
{
  signed char ccreg=FUNC16(i_regs->regmap,CCREG);
  FUNC1(ccreg==HOST_CCREG);
  FUNC1(!is_delayslot);
  if(opcode[i]==0&&opcode2[i]==11&&opcode3[i]==1) { // SLEEP
    pointer jaddr, return_address;
    FUNC6(HOST_CCREG,CLOCK_DIVIDER*ccadj[i],HOST_CCREG);
    jaddr=(pointer)out;
    FUNC9(0);
    return_address=(pointer)out;
    FUNC15(HOST_CCREG);
    FUNC17(jaddr,(pointer)out);
    FUNC0(CC_STUB,(int)out,return_address,0,i,start+i*2,TAKEN,0);
    FUNC8(0);
    // DEBUG: Count in multiples of three to match interpreter
    //emit_addimm_and_set_flags(CLOCK_DIVIDER*3,HOST_CCREG);
    //add_stub(CC_STUB,(int)out,return_address,0,i,start+i*2,TAKEN,0);
    //emit_jns(0);
    FUNC8(return_address);
  }
  else {
    int b,t,sr,st,map=-1,cache=-1;
    int jaddr=0;
    unsigned int hr;
    u32 reglist=0;
    FUNC1(opcode[i]==12); // TRAPA
    t=FUNC16(i_regs->regmap,-1);
    b=FUNC16(i_regs->regmap,VBR);
    sr=FUNC16(i_regs->regmap,SR);
    st=FUNC16(i_regs->regmap,15); // STACK
    for(hr=0;hr<HOST_REGS;hr++) {
      if(i_regs->regmap[hr]>=0) reglist|=1<<hr;
    }
    FUNC1(t>=0);
    FUNC1(b>=0);
    FUNC1(sr>=0);
    FUNC1(st>=0);
    FUNC6(st,-4,st);
    map=FUNC16(i_regs->regmap,MOREG);
    cache=FUNC16(i_regs->regmap,MMREG);
    FUNC1(map>=0);
    reglist&=~(1<<map);
    map=FUNC4(st,st,map,cache,0,0,0);
    FUNC5(map,0,0,&jaddr);
    // Save SR
    FUNC13(sr,16,sr);
    FUNC14(sr,0,st,map,map);
    FUNC13(sr,16,sr);
    if(jaddr) {
      FUNC0(STOREL_STUB,jaddr,(int)out,i,st,(int)i_regs,ccadj[i],reglist);
    }
    FUNC6(st,-4,st);
    FUNC18(i_regs->regmap,i_regs->dirty,-1);
    FUNC11(start+i*2+2,sr);
    FUNC6(b,imm[i]<<2,b);
    map=FUNC4(st,st,map,cache,0,0,0);
    FUNC5(map,0,0,&jaddr);
    // Save PC
    FUNC13(sr,16,sr);
    FUNC14(sr,0,st,map,map);
    if(jaddr) {
      FUNC0(STOREL_STUB,jaddr,(int)out,i,st,(int)i_regs,ccadj[i],reglist);
    }
    // Load PC
    map=FUNC2(b,b,map,cache,0,-1,-1,0,0);
    FUNC3(map,0,0,&jaddr);
    FUNC12(0,b,map,t);
    FUNC13(t,16,t);
    if(jaddr)
      FUNC0(LOADL_STUB,jaddr,(int)out,i,t,(int)i_regs,ccadj[i],reglist);
    if(i_regs->regmap[HOST_CCREG]!=CCREG) {
      FUNC10(CCREG,HOST_CCREG);
    }
    FUNC7(CLOCK_DIVIDER*(ccadj[i]+cycles[i]),HOST_CCREG);
    //add_stub(CC_STUB,(int)out,jump_vaddr_reg[slave][t],0,i,-1,TAKEN,0); // FIXME
    //emit_jns(0);
    FUNC8(jump_vaddr_reg[slave][t]);
  }
}