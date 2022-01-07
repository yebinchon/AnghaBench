
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regstat {char* regmap; } ;
typedef int pointer ;


 int AGEN1 ;
 int EAX ;
 int ECX ;
 int EDX ;
 int ESP ;
 scalar_t__ MappedMemoryReadByte ;
 int RMWA_STUB ;
 int RMWO_STUB ;
 int RMWT_STUB ;
 int RMWX_STUB ;
 int SR ;
 scalar_t__ WriteInvalidateByte ;
 int assem_debug (char*,scalar_t__) ;
 int assert (int) ;
 int emit_adcimm (int ,char) ;
 int emit_andimm (char,int,char) ;
 int emit_call (int) ;
 int emit_cmpmem_imm_byte (int ,int) ;
 int emit_jmp (int) ;
 int emit_mov (int,int) ;
 int emit_orimm (int,int,int) ;
 int emit_readword_indexed (int ,int ,int) ;
 int emit_writeword (int,int ) ;
 int emit_writeword_indexed (int,int ,int ) ;
 int emit_xorimm (int,int,int) ;
 void* get_reg (char*,int) ;
 int* imm ;
 int* opcode2 ;
 scalar_t__ out ;
 int restore_regs (int) ;
 int rmw_temp ;
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
  if(rs!=EAX) emit_mov(rs,EAX);
  if(rs==EAX||rs==ECX||rs==EDX)
    emit_writeword_indexed(rs,0,ESP);
  emit_call((int)MappedMemoryReadByte);
  emit_mov(EAX,EDX);
  if(rs==EAX||rs==ECX||rs==EDX)
    emit_readword_indexed(0,ESP,EAX);
  else
    emit_mov(rs,EAX);
  if(type==RMWA_STUB)
    emit_andimm(EDX,imm[i],EDX);
  if(type==RMWX_STUB)
    emit_xorimm(EDX,imm[i],EDX);
  if(type==RMWO_STUB)
    emit_orimm(EDX,imm[i],EDX);
  if(type==RMWT_STUB) {

    emit_writeword(EDX,(pointer)&rmw_temp);
    emit_orimm(EDX,0x80,EDX);
  }

  emit_call((int)WriteInvalidateByte);

  restore_regs(reglist);

  if(opcode2[i]==11) {
    signed char sr;
    sr=get_reg(i_regs->regmap,SR);
    assert(sr>=0);
    emit_andimm(sr,~1,sr);






    emit_cmpmem_imm_byte((pointer)&rmw_temp,1);
    emit_adcimm(0,sr);
  }
  emit_jmp(stubs[n][2]);
}
