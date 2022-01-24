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
 int EDI ; 
 int EDX ; 
 int ESI ; 
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
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int FUNC9 (char*,int) ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int* rt1 ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 scalar_t__ start ; 
 int** stubs ; 

FUNC13(int n)
{
  FUNC0("do_readstub %x\n",start+stubs[n][3]*2);
  FUNC12(stubs[n][1],(int)out);
  int type=stubs[n][0];
  int i=stubs[n][3];
  int rs=stubs[n][4];
  struct regstat *i_regs=(struct regstat *)stubs[n][5];
  u32 reglist=stubs[n][7];
  signed char *i_regmap=i_regs->regmap;
  int addr=FUNC9(i_regmap,AGEN1+(i&1));
  int rt;
  
  rt=FUNC9(i_regmap,rt1[i]==TBIT?-1:rt1[i]);
  FUNC1(rs>=0);
  if(addr<0) addr=rt;
  if(addr<0) addr=FUNC9(i_regmap,-1);
  FUNC1(addr>=0);
  FUNC11(reglist);
  if(rs!=EDI) FUNC5(rs,EDI);
  if(type==LOADB_STUB) FUNC8(EDI,1,EDI);

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
    int pc=FUNC9(i_regmap,RTEMP);
    FUNC1(pc>=0);
    if(rs==EAX||rs==ECX||rs==EDX||rs==ESI||rs==EDI)
      FUNC5(rs,12);
      //emit_writeword_indexed(rs,0,ESP);
    FUNC3((int)MappedMemoryReadLong);
    if(rs==EAX||rs==ECX||rs==EDX||rs==ESI)
      FUNC5(12,rs);
      //emit_readword_indexed(0,ESP,rs);
    if(pc==EDI) {
      FUNC5(EAX,12);
      //emit_writeword_indexed(EAX,0,ESP);
    }
    else
    {
      if(pc==EAX||pc==ECX||pc==EDX||pc==ESI)
        FUNC5(EAX,12);
        //emit_writeword_indexed(EAX,0,ESP);
      else
        FUNC5(EAX,pc);
      if(rs==EDI) {
        FUNC5(12,EDI);
        //emit_readword_indexed(0,ESP,EAX);
        FUNC2(EDI,4,EDI);
      }else
        FUNC2(rs,4,EDI);
    }
    FUNC3((int)MappedMemoryReadLong);
    FUNC1(rt>=0);
    if(rt!=EAX) FUNC5(EAX,rt);
    if(pc==EAX||pc==ECX||pc==EDX||pc==ESI||pc==EDI)
      FUNC5(12,pc);
      //emit_readword_indexed(0,ESP,pc);
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
  FUNC10(reglist);
  if(type==LOADS_STUB) FUNC2(rs,8,rs);
  FUNC4(stubs[n][2]); // return address
}