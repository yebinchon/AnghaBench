
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int STOREB_STUB ;
 int STOREL_STUB ;
 int STOREW_STUB ;
 scalar_t__ WriteInvalidateByte ;
 scalar_t__ WriteInvalidateLong ;
 scalar_t__ WriteInvalidateWord ;
 int assem_debug (char*) ;
 int assert (int) ;
 int emit_call (int) ;
 int emit_mov (int,int) ;
 int emit_movimm (int ,int ) ;
 int get_reg (char*,int) ;
 int restore_regs (int ) ;
 int save_regs (int ) ;

inline_writestub(int type, int i, u32 addr, signed char regmap[], int target, int adj, u32 reglist)
{
  assem_debug("inline_writestub\n");

  int rt=get_reg(regmap,target);

  assert(rt>=0);
  save_regs(reglist);

  if(rt!=1) emit_mov(rt,1);
  emit_movimm(addr,0);
  if(type==STOREB_STUB)
    emit_call((int)WriteInvalidateByte);
  if(type==STOREW_STUB)
    emit_call((int)WriteInvalidateWord);
  if(type==STOREL_STUB)
    emit_call((int)WriteInvalidateLong);
  restore_regs(reglist);
}
