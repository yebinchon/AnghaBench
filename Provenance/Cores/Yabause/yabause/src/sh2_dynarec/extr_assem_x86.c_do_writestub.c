
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regstat {char* regmap; } ;


 int AGEN1 ;
 int EAX ;
 int EDX ;
 int STOREB_STUB ;
 int STOREL_STUB ;
 int STOREW_STUB ;
 scalar_t__ WriteInvalidateByteSwapped ;
 scalar_t__ WriteInvalidateLong ;
 scalar_t__ WriteInvalidateWord ;
 int assem_debug (char*,scalar_t__) ;
 int assert (int) ;
 int emit_call (int) ;
 int emit_jmp (int) ;
 int emit_mov (int,int) ;
 int emit_xchg (int,int) ;
 int get_reg (char*,int) ;
 scalar_t__ out ;
 int restore_regs (int) ;
 int* rs1 ;
 int save_regs (int) ;
 int set_jump_target (int,int) ;
 scalar_t__ start ;
 int** stubs ;

do_writestub(int n)
{
  assem_debug("do_writestub %x\n",start+stubs[n][3]*2);
  set_jump_target(stubs[n][1],(int)out);
  int type=stubs[n][0];
  int i=stubs[n][3];
  int rs=stubs[n][4];
  struct regstat *i_regs=(struct regstat *)stubs[n][5];
  u32 reglist=stubs[n][7];
  signed char *i_regmap=i_regs->regmap;
  int addr=get_reg(i_regmap,AGEN1+(i&1));
  int rt=get_reg(i_regmap,rs1[i]);
  assert(rs>=0);
  assert(rt>=0);
  if(addr<0) addr=get_reg(i_regmap,-1);
  assert(addr>=0);
  save_regs(reglist);

  if(rs!=EAX) {
    if(rt==EAX) {
      if(rs==EDX) emit_xchg(EAX,EDX);
      else {
        emit_mov(rt,EDX);
        emit_mov(rs,EAX);
      }
    }
    else {
      emit_mov(rs,EAX);
      if(rt!=EDX) emit_mov(rt,EDX);
    }
  }
  else if(rt!=EDX) emit_mov(rt,EDX);
  if(type==STOREB_STUB)
    emit_call((int)WriteInvalidateByteSwapped);
  if(type==STOREW_STUB)
    emit_call((int)WriteInvalidateWord);
  if(type==STOREL_STUB)
    emit_call((int)WriteInvalidateLong);

  restore_regs(reglist);
  emit_jmp(stubs[n][2]);
}
