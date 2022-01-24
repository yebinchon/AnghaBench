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
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
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
  FUNC6(256);
  FUNC9(stubs[n][1],(int)out);
  int type=stubs[n][0];
  int i=stubs[n][3];
  int rs=stubs[n][4];
  struct regstat *i_regs=(struct regstat *)stubs[n][5];
  u32 reglist=stubs[n][7];
  signed char *i_regmap=i_regs->regmap;
  int addr=FUNC5(i_regmap,AGEN1+(i&1));
  int rt=FUNC5(i_regmap,rs1[i]);
  FUNC1(rs>=0);
  FUNC1(rt>=0);
  if(addr<0) addr=FUNC5(i_regmap,-1);
  FUNC1(addr>=0);
  FUNC8(reglist);
  // "FASTCALL" api: address in r0, data in r1
  if(rs!=0) {
    if(rt==0) {
      if(rs==1) {
        FUNC4(0,2);
        FUNC4(1,0);
        FUNC4(2,1);
      } else {
        FUNC4(rt,1);
        FUNC4(rs,0);
      }
    }
    else {
      FUNC4(rs,0);
      if(rt!=1) FUNC4(rt,1);
    }
  }
  else if(rt!=1) FUNC4(rt,1);
  //if(type==STOREB_STUB) emit_xorimm(EAX,1,EAX); // WriteInvalidateByteSwapped does this
  
  //if(i_regmap[HOST_CCREG]==CCREG) emit_storereg(CCREG,HOST_CCREG);//DEBUG
  //ds=i_regs!=&regs[i];
  //int real_rs=get_reg(i_regmap,rs2[i]);
  //if(!ds) load_all_consts(regs[i].regmap_entry,regs[i].was32,regs[i].wasdirty&~(1<<addr)&(real_rs<0?-1:~(1<<real_rs)),i);
  //wb_dirtys(i_regs->regmap_entry,i_regs->was32,i_regs->wasdirty&~(1<<addr)&(real_rs<0?-1:~(1<<real_rs)));
  
  if(type==STOREB_STUB)
    FUNC2((int)WriteInvalidateByteSwapped);
  if(type==STOREW_STUB)
    FUNC2((int)WriteInvalidateWord);
  if(type==STOREL_STUB)
    FUNC2((int)WriteInvalidateLong);
  
  FUNC7(reglist);
  FUNC3(stubs[n][2]); // return address
}