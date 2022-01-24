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
 scalar_t__ MappedMemoryReadByte ; 
 int RMWA_STUB ; 
 int RMWO_STUB ; 
 int RMWT_STUB ; 
 int RMWX_STUB ; 
 int SR ; 
 scalar_t__ WriteInvalidateByte ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  dynarec_local ; 
 int /*<<< orphan*/  FUNC2 (char,int,char) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char,int,char) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int) ; 
 void* FUNC12 (char*,int) ; 
 int* imm ; 
 int* opcode2 ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 scalar_t__ start ; 
 int** stubs ; 

FUNC16(int n)
{
  FUNC0("do_rmwstub %x\n",start+stubs[n][3]*2);
  FUNC15(stubs[n][1],(int)out);
  int type=stubs[n][0];
  int i=stubs[n][3];
  int rs=stubs[n][4];
  struct regstat *i_regs=(struct regstat *)stubs[n][5];
  u32 reglist=stubs[n][7];
  signed char *i_regmap=i_regs->regmap;
  int addr=FUNC12(i_regmap,AGEN1+(i&1));
  //int rt=get_reg(i_regmap,rs1[i]);
  FUNC1(rs>=0);
  //assert(rt>=0);
  if(addr<0) addr=FUNC12(i_regmap,-1);
  FUNC1(addr>=0);
  FUNC14(reglist);
  // "FASTCALL" api: address in r0, data in r1 
  FUNC11(rs,1,rs);
  if(rs!=0) FUNC5(rs,0);
  if(rs<4||rs==12)
    FUNC10(0,(int)&dynarec_local+24);
  
  //if(i_regmap[HOST_CCREG]==CCREG) emit_storereg(CCREG,HOST_CCREG);//DEBUG
  FUNC3((int)MappedMemoryReadByte);
  //emit_mov(0,1);
  if(type==RMWA_STUB)
    FUNC2(0,imm[i],1);
  if(type==RMWX_STUB)
    FUNC11(0,imm[i],1);
  if(type==RMWO_STUB)
    FUNC6(0,imm[i],1);
  if(type==RMWT_STUB) { // TAS.B
    FUNC10(0,(int)&dynarec_local+20);
    FUNC6(0,0x80,1);
  }
  if(rs<4||rs==12)
    FUNC8((int)&dynarec_local+24,0);
  else
    FUNC5(rs,0);
  //emit_call((int)MappedMemoryWriteByte);
  FUNC3((int)WriteInvalidateByte);
  
  FUNC13(reglist);

  if(opcode2[i]==11) { // TAS.B
    FUNC8((int)&dynarec_local+20,14);
    signed char sr;
    sr=FUNC12(i_regs->regmap,SR);
    FUNC1(sr>=0); // Liveness analysis?
    FUNC2(sr,~1,sr);
    FUNC9(14,0xff);
    FUNC7(sr,1,sr);
  }
  FUNC4(stubs[n][2]); // return address
}