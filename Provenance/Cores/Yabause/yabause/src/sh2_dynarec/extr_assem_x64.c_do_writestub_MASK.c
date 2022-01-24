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
 int EDI ; 
 int ESI ; 
 int STOREB_STUB ; 
 int STOREL_STUB ; 
 int STOREW_STUB ; 
 scalar_t__ WriteInvalidateByteSwapped ; 
 scalar_t__ WriteInvalidateLong ; 
 scalar_t__ WriteInvalidateWord ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (char*,int) ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int* rs1 ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 scalar_t__ start ; 
 int** stubs ; 

FUNC10(int n)
{
  FUNC0("do_writestub %x\n",start+stubs[n][3]*2);
  FUNC9(stubs[n][1],(int)out);
  int type=stubs[n][0];
  int i=stubs[n][3];
  int rs=stubs[n][4];
  struct regstat *i_regs=(struct regstat *)stubs[n][5];
  u32 reglist=stubs[n][7];
  signed char *i_regmap=i_regs->regmap;
  int addr=FUNC6(i_regmap,AGEN1+(i&1));
  int rt=FUNC6(i_regmap,rs1[i]);
  FUNC1(rs>=0);
  FUNC1(rt>=0);
  if(addr<0) addr=FUNC6(i_regmap,-1);
  FUNC1(addr>=0);
  FUNC8(reglist);
  // "FASTCALL" api: address in edi, data in esi
  if(rs!=EDI) {
    if(rt==EDI) {
      if(rs==ESI) FUNC5(EDI,ESI);
      else {
        FUNC4(rt,ESI);
        FUNC4(rs,EDI);
      }
    }
    else {
      FUNC4(rs,EDI);
      if(rt!=ESI) FUNC4(rt,ESI);
    }
  }
  else if(rt!=ESI) FUNC4(rt,ESI);
  //if(type==STOREB_STUB) emit_xorimm(EAX,1,EAX); // WriteInvalidateByteSwapped does this
  
  /*int temp;
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
  if(type==STOREB_STUB)
    FUNC2((int)WriteInvalidateByteSwapped);
  if(type==STOREW_STUB)
    FUNC2((int)WriteInvalidateWord);
  if(type==STOREL_STUB)
    FUNC2((int)WriteInvalidateLong);
  
  FUNC7(reglist);
  FUNC3(stubs[n][2]); // return address
}