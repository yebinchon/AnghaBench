
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regstat {char* regmap; } ;


 int AGEN1 ;
 scalar_t__ MappedMemoryReadByte ;
 int RMWA_STUB ;
 int RMWO_STUB ;
 int RMWT_STUB ;
 int RMWX_STUB ;
 int SR ;
 scalar_t__ WriteInvalidateByte ;
 int assem_debug (char*,scalar_t__) ;
 int assert (int) ;
 int dynarec_local ;
 int emit_andimm (char,int,char) ;
 int emit_call (int) ;
 int emit_jmp (int) ;
 int emit_mov (int,int ) ;
 int emit_orimm (int ,int,int) ;
 int emit_orreq_imm (char,int,char) ;
 int emit_readword (int,int) ;
 int emit_testimm (int,int) ;
 int emit_writeword (int ,int) ;
 int emit_xorimm (int,int,int) ;
 void* get_reg (char*,int) ;
 int* imm ;
 int* opcode2 ;
 scalar_t__ out ;
 int restore_regs (int) ;
 int save_regs (int) ;
 int set_jump_target (int,int) ;
 scalar_t__ start ;
 int** stubs ;

do_rmwstub(int n)
{
  assem_debug("do_rmwstub %x\n",start+stubs[n][3]*2);
  set_jump_target(stubs[n][1],(int)out);
  int type=stubs[n][0];
  int i=stubs[n][3];
  int rs=stubs[n][4];
  struct regstat *i_regs=(struct regstat *)stubs[n][5];
  u32 reglist=stubs[n][7];
  signed char *i_regmap=i_regs->regmap;
  int addr=get_reg(i_regmap,AGEN1+(i&1));

  assert(rs>=0);

  if(addr<0) addr=get_reg(i_regmap,-1);
  assert(addr>=0);
  save_regs(reglist);

  emit_xorimm(rs,1,rs);
  if(rs!=0) emit_mov(rs,0);
  if(rs<4||rs==12)
    emit_writeword(0,(int)&dynarec_local+24);


  emit_call((int)MappedMemoryReadByte);

  if(type==RMWA_STUB)
    emit_andimm(0,imm[i],1);
  if(type==RMWX_STUB)
    emit_xorimm(0,imm[i],1);
  if(type==RMWO_STUB)
    emit_orimm(0,imm[i],1);
  if(type==RMWT_STUB) {
    emit_writeword(0,(int)&dynarec_local+20);
    emit_orimm(0,0x80,1);
  }
  if(rs<4||rs==12)
    emit_readword((int)&dynarec_local+24,0);
  else
    emit_mov(rs,0);

  emit_call((int)WriteInvalidateByte);

  restore_regs(reglist);

  if(opcode2[i]==11) {
    emit_readword((int)&dynarec_local+20,14);
    signed char sr;
    sr=get_reg(i_regs->regmap,SR);
    assert(sr>=0);
    emit_andimm(sr,~1,sr);
    emit_testimm(14,0xff);
    emit_orreq_imm(sr,1,sr);
  }
  emit_jmp(stubs[n][2]);
}
