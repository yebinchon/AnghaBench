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
struct regstat {scalar_t__* regmap; int wasdoingcp; int isconst; int* constmap; long long u; } ;
typedef  int pointer ;

/* Variables and functions */
 scalar_t__ DUALIND ; 
 scalar_t__ GBRIND ; 
 unsigned int HOST_REGS ; 
 int /*<<< orphan*/  LOADB_STUB ; 
 int /*<<< orphan*/  LOADL_STUB ; 
 int /*<<< orphan*/  LOADW_STUB ; 
 int MMREG ; 
 int MOREG ; 
 scalar_t__ POSTINC ; 
 int SR ; 
 int TBIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__* addrmode ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/ * ccadj ; 
 int** cpmap ; 
 int FUNC3 (int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int,char,int) ; 
 int FUNC15 (scalar_t__*,int) ; 
 int FUNC16 (scalar_t__*,int) ; 
 int* imm ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int,scalar_t__*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int) ; 
 int* opcode ; 
 int* opcode2 ; 
 scalar_t__ out ; 
 int* rs1 ; 
 int* rs2 ; 
 int* rt1 ; 
 long long* rt2 ; 

void FUNC19(int i,struct regstat *i_regs)
{
  int dummy;
  int s,o,t,addr,map=-1,cache=-1;
  int offset;
  int jaddr=0;
  int memtarget,c=0;
  int dualindex=(addrmode[i]==DUALIND||addrmode[i]==GBRIND);
  int size=(opcode[i]==4)?2:(opcode2[i]&3);
  unsigned int hr;
  u32 reglist=0;
  pointer constaddr;
  t=FUNC16(i_regs->regmap,rt1[i]==TBIT?-1:rt1[i]);
  s=FUNC16(i_regs->regmap,rs1[i]);
  o=FUNC16(i_regs->regmap,rs2[i]);
  offset=imm[i];
  for(hr=0;hr<HOST_REGS;hr++) {
    if(i_regs->regmap[hr]>=0) reglist|=1<<hr;
  }
  //if(i_regs->regmap[HOST_CCREG]==CCREG) reglist&=~(1<<HOST_CCREG);
  if(s>=0) {
    if(dualindex)
      c=(i_regs->wasdoingcp>>s)&(i_regs->wasdoingcp>>o)&1;
    else
      c=(i_regs->wasdoingcp>>s)&1;
    if(c) {
      if(dualindex)
        constaddr=cpmap[i][s]+cpmap[i][o];
      else
        constaddr=cpmap[i][s]+offset;
      //if(dualindex) {
      // if((i_regs->isconst>>rs1[i])&(i_regs->isconst>>rs2[i])&1)
      //  assert(constaddr==i_regs->constmap[rs1[i]]+i_regs->constmap[rs2[i]]);
      //}else
      // if((i_regs->isconst>>rs1[i])&1)
      //  assert(constaddr==i_regs->constmap[rs1[i]]+offset);
      if(addrmode[i]==POSTINC) constaddr-=1<<size;
      //printf("constaddr=%x offset=%x\n",constaddr,offset);
      memtarget=FUNC2(constaddr);
    }
  }
  if(t<0) t=FUNC16(i_regs->regmap,-1);
  if(!c) {
    if(dualindex) {
      c=(i_regs->isconst>>rs1[i])&(i_regs->isconst>>rs2[i])&1;
    } else {
      c=(i_regs->isconst>>rs1[i])&1;
    }
    if(c) {
      if(dualindex)
        constaddr=i_regs->constmap[rs1[i]]+i_regs->constmap[rs2[i]];
      else
        constaddr=i_regs->constmap[rs1[i]]+offset;
      if(addrmode[i]==POSTINC) constaddr-=1<<size;
      //printf("constaddr=%x offset=%x\n",constaddr,offset);
      memtarget=FUNC2(constaddr);
      #ifndef HOST_IMM_ADDR32
      // In this case, the constant is not already loaded into a register
      if(FUNC2(constaddr))
        FUNC6(FUNC18(constaddr^(!size)),t);
      #endif
    }
  }
  if(offset||dualindex||s<0||c) addr=t;
  else addr=s;
  //printf("load_assemble: c=%d\n",c);
  //if(c) printf("load_assemble: const=%x\n",(int)constaddr);
  FUNC1(t>=0); // Even if the load is a NOP, we must check for I/O
  reglist&=~(1<<t);
  if(!c)
  {
    int x=0;
    if (!c&&size==0) x=1; // MOV.B
    cache=FUNC16(i_regs->regmap,MMREG);
    map=FUNC16(i_regs->regmap,MOREG);
    if(map<0) map=FUNC15(i_regs->regmap,-1);
    FUNC1(map>=0);
    FUNC1(map!=s);
    FUNC1(map!=t);
    reglist&=~(1<<map);
    map=FUNC3(addr,t,map,cache,x,-1,-1,c,constaddr);
    if (!c&&size==0) addr=t; // MOV.B
    FUNC4(map,c,constaddr,&jaddr);
    //jaddr=(int)out;emit_jmp(0); // for debugging
  }
  else
  {
    if(FUNC2(constaddr)) constaddr=FUNC18(constaddr);
  }
  dummy=(t!=FUNC16(i_regs->regmap,rt1[i])); // ignore loads to unneeded reg
  if(opcode[i]==12&&opcode2[i]==12) // TST.B
    dummy=i_regs->u&(1LL<<TBIT);
  if (size==0) { // MOV.B
    if(!c||memtarget) {
      if(!dummy) {
        #ifdef HOST_IMM_ADDR32
        if(c)
          emit_movsbl(constaddr^1,t);
        else
        #endif
        {
          int x=0;
          FUNC8(x,t,map,t);
        }
      }
      if(jaddr)
        FUNC0(LOADB_STUB,jaddr,(int)out,i,addr,(int)i_regs,ccadj[i],reglist);
    }
    else
      FUNC17(LOADB_STUB,i,constaddr,i_regs->regmap,rt1[i],ccadj[i],reglist);
    if(rt1[i]==TBIT&&!dummy) { // TST.B
      signed char sr;
      sr=FUNC16(i_regs->regmap,SR);
      FUNC1(sr>=0); // Liveness analysis?
      FUNC14(t,imm[i],sr,t);
    }
  }
  if (size==1) { // MOV.W
    if(!c||memtarget) {
      if(!dummy) {
        #ifdef HOST_IMM_ADDR32
        if(c)
          emit_movswl(constaddr,t);
        else
        #endif
        {
          int x=0;
          FUNC10(0,addr,map,t);
        }
      }
      if(jaddr)
        FUNC0(LOADW_STUB,jaddr,(int)out,i,addr,(int)i_regs,ccadj[i],reglist);
    }
    else
      FUNC17(LOADW_STUB,i,constaddr,i_regs->regmap,rt1[i],ccadj[i],reglist);
  }
  if (size==2) { // MOV.L
    if(!c||memtarget) {
      if(!dummy) {
        #ifdef HOST_IMM_ADDR32
        if(c)
          emit_readword(constaddr,t);
        else
        #endif
        FUNC12(0,addr,map,t);
        FUNC13(t,16,t);
      }
      if(jaddr)
        FUNC0(LOADL_STUB,jaddr,(int)out,i,addr,(int)i_regs,ccadj[i],reglist);
    }
    else
      FUNC17(LOADL_STUB,i,constaddr,i_regs->regmap,rt1[i],ccadj[i],reglist);
  }
  if(addrmode[i]==POSTINC) {
    if(!((i_regs->wasdoingcp>>s)&1)) {
      if(!(i_regs->u&(1LL<<rt2[i]))&&rt1[i]!=rt2[i]) 
        FUNC5(s,1<<size,s);
    }
  }
  //emit_storereg(rt1[i],tl); // DEBUG
  //if(opcode[i]==0x23)
  //if(opcode[i]==0x24)
  //if(opcode[i]==0x23||opcode[i]==0x24)
  /*if(opcode[i]==0x21||opcode[i]==0x23||opcode[i]==0x24)
  {
    //emit_pusha();
    save_regs(0x100f);
        emit_readword((int)&last_count,ECX);
        #ifdef __i386__
        if(get_reg(i_regs->regmap,CCREG)<0)
          emit_loadreg(CCREG,HOST_CCREG);
        emit_add(HOST_CCREG,ECX,HOST_CCREG);
        emit_addimm(HOST_CCREG,2*ccadj[i],HOST_CCREG);
        emit_writeword(HOST_CCREG,(int)&Count);
        #endif
        #ifdef __arm__
        if(get_reg(i_regs->regmap,CCREG)<0)
          emit_loadreg(CCREG,0);
        else
          emit_mov(HOST_CCREG,0);
        emit_add(0,ECX,0);
        emit_addimm(0,2*ccadj[i],0);
        emit_writeword(0,(int)&Count);
        #endif
    emit_call((int)memdebug);
    //emit_popa();
    restore_regs(0x100f);
  }/**/
}