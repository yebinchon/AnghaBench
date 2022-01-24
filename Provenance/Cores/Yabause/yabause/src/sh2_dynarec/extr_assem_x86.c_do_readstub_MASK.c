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
 int EAX ; 
 int ECX ; 
 int EDX ; 
 int /*<<< orphan*/  ESP ; 
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
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int) ; 
 int FUNC11 (char*,int) ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int* rt1 ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 scalar_t__ start ; 
 int** stubs ; 

FUNC15(int n)
{
  FUNC0("do_readstub %x\n",start+stubs[n][3]*2);
  FUNC14(stubs[n][1],(int)out);
  int type=stubs[n][0];
  int i=stubs[n][3];
  int rs=stubs[n][4];
  struct regstat *i_regs=(struct regstat *)stubs[n][5];
  u32 reglist=stubs[n][7];
  signed char *i_regmap=i_regs->regmap;
  int addr=FUNC11(i_regmap,AGEN1+(i&1));
  int rt;
  
  rt=FUNC11(i_regmap,rt1[i]==TBIT?-1:rt1[i]);
  FUNC1(rs>=0);
  if(addr<0) addr=rt;
  if(addr<0) addr=FUNC11(i_regmap,-1);
  FUNC1(addr>=0);
  FUNC13(reglist);
  if(rs!=EAX) FUNC5(rs,EAX);
  if(type==LOADB_STUB) FUNC10(EAX,1,EAX);

  //if(i_regmap[HOST_CCREG]==CCREG) emit_storereg(CCREG,HOST_CCREG);//DEBUG
  /*if(i_regmap[HOST_CCREG]==CCREG) {
    emit_addimm(HOST_CCREG,CLOCK_DIVIDER*(stubs[n][6]),HOST_CCREG);
    output_byte(0x03);
    output_modrm(1,4,HOST_CCREG);
    output_sib(0,4,4);
    output_byte(12+16);
    //emit_writeword(HOST_CCREG,(int)&MSH2->cycles);
    emit_writeword(HOST_CCREG,slave?(int)&SSH2->cycles:(int)&MSH2->cycles);
    output_byte(0x2B);
    output_modrm(1,4,HOST_CCREG);
    output_sib(0,4,4);
    output_byte(12+16);
    emit_addimm(HOST_CCREG,-CLOCK_DIVIDER*(stubs[n][6]),HOST_CCREG);
  }
  if(i_regmap[HOST_CCREG]!=CCREG) {
    emit_loadreg(CCREG,ECX);
    emit_addimm(ECX,CLOCK_DIVIDER*(stubs[n][6]),ECX);
    output_byte(0x03);
    output_modrm(1,4,ECX);
    output_sib(0,4,4);
    output_byte(12+16);
    //emit_writeword(ECX,(int)&MSH2->cycles);
    emit_writeword(ECX,slave?(int)&SSH2->cycles:(int)&MSH2->cycles);
  }
  /*
  int temp;
  int cc=get_reg(i_regmap,CCREG);
  if(cc<0) {
    if(addr==HOST_CCREG)
    {
      cc=0;temp=1;
      assert(cc!=HOST_CCREG);
      assert(temp!=HOST_CCREG);
      emit_loadreg(CCREG,cc);
    }
    else
    {
      cc=HOST_CCREG;
      emit_loadreg(CCREG,cc);
      temp=!addr;
    }
  }
  else
  {
    temp=!addr;
  }*/
  if(type==LOADB_STUB)
    FUNC3((int)MappedMemoryReadByte);
  if(type==LOADW_STUB)
    FUNC3((int)MappedMemoryReadWord);
  if(type==LOADL_STUB)
    FUNC3((int)MappedMemoryReadLong);
  if(type==LOADS_STUB)
  {
    // RTE instruction, pop PC and SR from stack
    int pc=FUNC11(i_regmap,RTEMP);
    FUNC1(pc>=0);
    if(rs==EAX||rs==ECX||rs==EDX)
      FUNC9(rs,0,ESP);
    FUNC3((int)MappedMemoryReadLong);
    if(rs==ECX||rs==EDX)
      FUNC8(0,ESP,rs);
    if(pc==EAX) {
      FUNC9(EAX,0,ESP);
    }
    else
    {
      if(pc==ECX||pc==EDX)
        FUNC9(EAX,0,ESP);
      else
        FUNC5(EAX,pc);
      if(rs==EAX) {
        FUNC8(0,ESP,EAX);
        FUNC2(EAX,4,EAX);
      }else
        FUNC2(rs,4,EAX);
    }
    FUNC3((int)MappedMemoryReadLong);
    FUNC1(rt>=0);
    if(rt!=EAX) FUNC5(EAX,rt);
    if(pc==EAX||pc==ECX||pc==EDX)
      FUNC8(0,ESP,pc);
  }
  else if(type==LOADB_STUB)
  {
    if(rt>=0) FUNC6(EAX,rt);
  }
  else if(type==LOADW_STUB)
  {
    if(rt>=0) FUNC7(EAX,rt);
  }
  else
  {
    if(rt!=EAX&&rt>=0) FUNC5(EAX,rt);
  }
  FUNC12(reglist);
  if(type==LOADS_STUB) FUNC2(rs,8,rs);
  FUNC4(stubs[n][2]); // return address
}