
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regstat {scalar_t__* regmap; int wasdoingcp; int isconst; int* constmap; long long u; } ;
typedef int pointer ;


 scalar_t__ DUALIND ;
 scalar_t__ GBRIND ;
 unsigned int HOST_REGS ;
 int LOADB_STUB ;
 int LOADL_STUB ;
 int LOADW_STUB ;
 int MMREG ;
 int MOREG ;
 scalar_t__ POSTINC ;
 int SR ;
 int TBIT ;
 int add_stub (int ,int,int,int,int,int,int ,int) ;
 scalar_t__* addrmode ;
 int assert (int) ;
 int can_direct_read (int) ;
 int * ccadj ;
 int** cpmap ;
 int do_map_r (int,int,int,int,int,int,int,int,int) ;
 int do_map_r_branch (int,int,int,int*) ;
 int emit_addimm (int,int,int) ;
 int emit_movimm (int,int) ;
 int emit_movsbl (int,int) ;
 int emit_movsbl_indexed_map (int,int,int,int) ;
 int emit_movswl (int,int) ;
 int emit_movswl_indexed_map (int ,int,int,int) ;
 int emit_readword (int,int) ;
 int emit_readword_indexed_map (int ,int,int,int) ;
 int emit_rorimm (int,int,int) ;
 int emit_sh2tstimm (int,int,char,int) ;
 int get_alt_reg (scalar_t__*,int) ;
 int get_reg (scalar_t__*,int) ;
 int* imm ;
 int inline_readstub (int ,int,int,scalar_t__*,int,int ,int) ;
 int map_address (int) ;
 int* opcode ;
 int* opcode2 ;
 scalar_t__ out ;
 int* rs1 ;
 int* rs2 ;
 int* rt1 ;
 long long* rt2 ;

void load_assemble(int i,struct regstat *i_regs)
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
  t=get_reg(i_regs->regmap,rt1[i]==TBIT?-1:rt1[i]);
  s=get_reg(i_regs->regmap,rs1[i]);
  o=get_reg(i_regs->regmap,rs2[i]);
  offset=imm[i];
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
        constaddr=cpmap[i][s]+offset;






      if(addrmode[i]==POSTINC) constaddr-=1<<size;

      memtarget=can_direct_read(constaddr);
    }
  }
  if(t<0) t=get_reg(i_regs->regmap,-1);
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

      memtarget=can_direct_read(constaddr);


      if(can_direct_read(constaddr))
        emit_movimm(map_address(constaddr^(!size)),t);

    }
  }
  if(offset||dualindex||s<0||c) addr=t;
  else addr=s;


  assert(t>=0);
  reglist&=~(1<<t);
  if(!c)
  {
    int x=0;
    if (!c&&size==0) x=1;
    cache=get_reg(i_regs->regmap,MMREG);
    map=get_reg(i_regs->regmap,MOREG);
    if(map<0) map=get_alt_reg(i_regs->regmap,-1);
    assert(map>=0);
    assert(map!=s);
    assert(map!=t);
    reglist&=~(1<<map);
    map=do_map_r(addr,t,map,cache,x,-1,-1,c,constaddr);
    if (!c&&size==0) addr=t;
    do_map_r_branch(map,c,constaddr,&jaddr);

  }
  else
  {
    if(can_direct_read(constaddr)) constaddr=map_address(constaddr);
  }
  dummy=(t!=get_reg(i_regs->regmap,rt1[i]));
  if(opcode[i]==12&&opcode2[i]==12)
    dummy=i_regs->u&(1LL<<TBIT);
  if (size==0) {
    if(!c||memtarget) {
      if(!dummy) {





        {
          int x=0;
          emit_movsbl_indexed_map(x,t,map,t);
        }
      }
      if(jaddr)
        add_stub(LOADB_STUB,jaddr,(int)out,i,addr,(int)i_regs,ccadj[i],reglist);
    }
    else
      inline_readstub(LOADB_STUB,i,constaddr,i_regs->regmap,rt1[i],ccadj[i],reglist);
    if(rt1[i]==TBIT&&!dummy) {
      signed char sr;
      sr=get_reg(i_regs->regmap,SR);
      assert(sr>=0);
      emit_sh2tstimm(t,imm[i],sr,t);
    }
  }
  if (size==1) {
    if(!c||memtarget) {
      if(!dummy) {





        {
          int x=0;
          emit_movswl_indexed_map(0,addr,map,t);
        }
      }
      if(jaddr)
        add_stub(LOADW_STUB,jaddr,(int)out,i,addr,(int)i_regs,ccadj[i],reglist);
    }
    else
      inline_readstub(LOADW_STUB,i,constaddr,i_regs->regmap,rt1[i],ccadj[i],reglist);
  }
  if (size==2) {
    if(!c||memtarget) {
      if(!dummy) {





        emit_readword_indexed_map(0,addr,map,t);
        emit_rorimm(t,16,t);
      }
      if(jaddr)
        add_stub(LOADL_STUB,jaddr,(int)out,i,addr,(int)i_regs,ccadj[i],reglist);
    }
    else
      inline_readstub(LOADL_STUB,i,constaddr,i_regs->regmap,rt1[i],ccadj[i],reglist);
  }
  if(addrmode[i]==POSTINC) {
    if(!((i_regs->wasdoingcp>>s)&1)) {
      if(!(i_regs->u&(1LL<<rt2[i]))&&rt1[i]!=rt2[i])
        emit_addimm(s,1<<size,s);
    }
  }
}
