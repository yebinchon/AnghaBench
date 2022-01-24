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
struct regstat {scalar_t__* regmap; int wasdoingcp; long long u; } ;

/* Variables and functions */
 scalar_t__ GBRIND ; 
 unsigned int HOST_REGS ; 
 int MMREG ; 
 int MOREG ; 
 int RMWA_STUB ; 
 int RMWO_STUB ; 
 int RMWT_STUB ; 
 int RMWX_STUB ; 
 int SR ; 
 long long TBIT ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__* addrmode ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * ccadj ; 
 int** cpmap ; 
 int FUNC2 (int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,char) ; 
 void* FUNC8 (scalar_t__*,int) ; 
 int* imm ; 
 int* opcode2 ; 
 scalar_t__ out ; 
 int* rs1 ; 
 int* rs2 ; 
 long long* rt1 ; 

void FUNC9(int i,struct regstat *i_regs)
{
  int s,o,t,addr,map=-1,cache=-1;
  int jaddr=0;
  int type;
  int memtarget,c=0,constaddr;
  int dualindex=(addrmode[i]==GBRIND);
  unsigned int hr;
  u32 reglist=0;
  t=FUNC8(i_regs->regmap,-1);
  s=FUNC8(i_regs->regmap,rs1[i]);
  o=FUNC8(i_regs->regmap,rs2[i]);
  for(hr=0;hr<HOST_REGS;hr++) {
    if(i_regs->regmap[hr]>=0) reglist|=1<<hr;
  }
  if(s>=0) {
    if(dualindex)
      c=(i_regs->wasdoingcp>>s)&(i_regs->wasdoingcp>>o)&1;
    else
      c=(i_regs->wasdoingcp>>s)&1;
    if(c) {
      if(dualindex)
         constaddr=cpmap[i][s]+cpmap[i][o];
      else
         constaddr=cpmap[i][s];
    }
    //printf("constaddr=%x offset=%x\n",constaddr,offset);
    memtarget=1; // FIXME
  }
  if(dualindex||s<0||c) addr=t;
  else addr=s;
  FUNC1(t>=0);
  reglist&=~(1<<t);
  {
    int x=0;
    if (!c) x=1; // MOV.B
    map=FUNC8(i_regs->regmap,MOREG);
    cache=FUNC8(i_regs->regmap,MMREG);
    FUNC1(map>=0);
    reglist&=~(1<<map);
    map=FUNC2(addr,t,map,cache,x,c,constaddr);
    if (!c) addr=t; // MOV.B
    FUNC3(map,c,constaddr,&jaddr);
  }
  if(opcode2[i]==11) type=RMWT_STUB; // TAS.B
  if(opcode2[i]==13) type=RMWA_STUB; // AND.B
  if(opcode2[i]==14) type=RMWX_STUB; // XOR.B
  if(opcode2[i]==15) type=RMWO_STUB; // OR.B
  if(!c||memtarget) {
    if(opcode2[i]==11) { // TAS.B
      signed char sr;
      sr=FUNC8(i_regs->regmap,SR);
      FUNC1(sr>=0); // Liveness analysis?
      FUNC1(rt1[i]==TBIT);
      if(sr>=0&&!(i_regs->u&(1LL<<TBIT))) FUNC7(addr,map,sr);
      else FUNC5(addr,map,0x80); // T ignored, set only
    }
    if(opcode2[i]==13) FUNC4(addr,map,imm[i]); // AND.B
    if(opcode2[i]==14) FUNC6(addr,map,imm[i]); // XOR.B
    if(opcode2[i]==15) FUNC5(addr,map,imm[i]); // OR.B
  }
  if(jaddr)
    FUNC0(type,jaddr,(int)out,i,addr,(int)i_regs,ccadj[i],reglist);
}