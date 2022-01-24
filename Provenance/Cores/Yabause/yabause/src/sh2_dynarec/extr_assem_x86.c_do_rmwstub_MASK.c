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
typedef  int /*<<< orphan*/  pointer ;

/* Variables and functions */
 int AGEN1 ; 
 int EAX ; 
 int ECX ; 
 int EDX ; 
 int /*<<< orphan*/  ESP ; 
 scalar_t__ MappedMemoryReadByte ; 
 int RMWA_STUB ; 
 int RMWO_STUB ; 
 int RMWT_STUB ; 
 int RMWX_STUB ; 
 int SR ; 
 scalar_t__ WriteInvalidateByte ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (char,int,char) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int) ; 
 void* FUNC13 (char*,int) ; 
 int* imm ; 
 int* opcode2 ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  rmw_temp ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 scalar_t__ start ; 
 int** stubs ; 

FUNC17(int n)
{
  FUNC0("do_rmwstub %x\n",start+stubs[n][3]*2);
  FUNC16(stubs[n][1],(int)out);
  int type=stubs[n][0];
  int i=stubs[n][3];
  int rs=stubs[n][4];
  struct regstat *i_regs=(struct regstat *)stubs[n][5];
  u32 reglist=stubs[n][7];
  signed char *i_regmap=i_regs->regmap;
  int addr=FUNC13(i_regmap,AGEN1+(i&1));
  //int rt=get_reg(i_regmap,rs1[i]);
  FUNC1(rs>=0);
  //assert(rt>=0);
  if(addr<0) addr=FUNC13(i_regmap,-1);
  FUNC1(addr>=0);
  FUNC15(reglist);
  // "FASTCALL" api: address in eax, data in edx
  FUNC12(rs,1,rs);
  if(rs!=EAX) FUNC7(rs,EAX);
  if(rs==EAX||rs==ECX||rs==EDX)
    FUNC11(rs,0,ESP);
  
  //if(i_regmap[HOST_CCREG]==CCREG) emit_storereg(CCREG,HOST_CCREG);//DEBUG
  /*if(i_regmap[HOST_CCREG]==CCREG) {
    emit_addimm(HOST_CCREG,CLOCK_DIVIDER*(stubs[n][6]),HOST_CCREG);
    output_byte(0x03);
    output_modrm(1,4,HOST_CCREG);
    output_sib(0,4,4);
    output_byte(12+16);
    emit_writeword(HOST_CCREG,(int)&MSH2->cycles);
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
    emit_writeword(ECX,(int)&MSH2->cycles);
  }*/
  FUNC4((int)MappedMemoryReadByte);
  FUNC7(EAX,EDX);
  if(rs==EAX||rs==ECX||rs==EDX)
    FUNC9(0,ESP,EAX);
  else
    FUNC7(rs,EAX);
  if(type==RMWA_STUB)
    FUNC3(EDX,imm[i],EDX);
  if(type==RMWX_STUB)
    FUNC12(EDX,imm[i],EDX);
  if(type==RMWO_STUB)
    FUNC8(EDX,imm[i],EDX);
  if(type==RMWT_STUB) { // TAS.B
    //emit_writeword_indexed(EDX,0,ESP);
    FUNC10(EDX,(pointer)&rmw_temp);
    FUNC8(EDX,0x80,EDX);
  }
  //emit_call((int)MappedMemoryWriteByte);
  FUNC4((int)WriteInvalidateByte);
  
  FUNC14(reglist);

  if(opcode2[i]==11) { // TAS.B
    signed char sr;
    sr=FUNC13(i_regs->regmap,SR);
    FUNC1(sr>=0); // Liveness analysis?
    FUNC3(sr,~1,sr);
    //assem_debug("cmp $%d,%d+%%%s\n",1,-16,regname[ESP]);
    //output_byte(0x80);
    //output_modrm(1,4,7);
    //output_sib(0,4,4);
    //output_byte(-16);
    //output_byte(1);
    FUNC5((pointer)&rmw_temp,1);
    FUNC2(0,sr);
  }
  FUNC6(stubs[n][2]); // return address
}