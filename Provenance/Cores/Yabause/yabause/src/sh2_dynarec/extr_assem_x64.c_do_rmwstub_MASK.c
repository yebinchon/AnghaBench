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
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 
 void* FUNC10 (char*,int) ; 
 int* imm ; 
 int* opcode2 ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 scalar_t__ start ; 
 int** stubs ; 

FUNC14(int n)
{
  FUNC0("do_rmwstub %x\n",start+stubs[n][3]*2);
  FUNC13(stubs[n][1],(int)out);
  int type=stubs[n][0];
  int i=stubs[n][3];
  int rs=stubs[n][4];
  struct regstat *i_regs=(struct regstat *)stubs[n][5];
  u32 reglist=stubs[n][7];
  signed char *i_regmap=i_regs->regmap;
  int addr=FUNC10(i_regmap,AGEN1+(i&1));
  //int rt=get_reg(i_regmap,rs1[i]);
  FUNC1(rs>=0);
  //assert(rt>=0);
  if(addr<0) addr=FUNC10(i_regmap,-1);
  FUNC1(addr>=0);
  FUNC12(reglist);
  // "FASTCALL" api: address in eax, data in edx
  FUNC9(rs,1,rs);
  if(rs!=EDI) FUNC7(rs,EDI);
  if(rs==EAX||rs==ECX||rs==EDX||rs==ESI||rs==EDI)
    FUNC7(rs,12);
    //emit_writeword_indexed(rs,0,ESP);
  
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
  FUNC7(EAX,ESI);
  if(rs==EAX||rs==ECX||rs==EDX||rs==ESI||rs==EDI)
    FUNC7(12,EDI);
    //emit_readword_indexed(0,ESP,EAX);
  else
    FUNC7(rs,EDI);
  if(type==RMWA_STUB)
    FUNC3(ESI,imm[i],ESI);
  if(type==RMWX_STUB)
    FUNC9(ESI,imm[i],ESI);
  if(type==RMWO_STUB)
    FUNC8(ESI,imm[i],ESI);
  if(type==RMWT_STUB) { // TAS.B
    FUNC7(ESI,12);
    //emit_writeword_indexed(EDX,0,ESP);
    FUNC8(ESI,0x80,ESI);
  }
  //emit_call((int)MappedMemoryWriteByte);
  FUNC4((int)WriteInvalidateByte);
  
  FUNC11(reglist);

  if(opcode2[i]==11) { // TAS.B
    signed char sr;
    sr=FUNC10(i_regs->regmap,SR);
    FUNC1(sr>=0); // Liveness analysis?
    FUNC3(sr,~1,sr);
    /*assem_debug("cmp $%d,%d+%%%s\n",1,-16,regname[ESP]);
    output_byte(0x80);
    output_modrm(1,4,7);
    output_sib(0,4,4);
    output_byte(-16);
    output_byte(1);*/
    FUNC5(12,1);
    FUNC2(0,sr);
  }
  FUNC6(stubs[n][2]); // return address
}