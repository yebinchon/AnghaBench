
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EAX ;
 int EDI ;
 int LOADB_STUB ;
 int LOADL_STUB ;
 int LOADS_STUB ;
 int LOADW_STUB ;
 scalar_t__ MappedMemoryReadByte ;
 scalar_t__ MappedMemoryReadLong ;
 scalar_t__ MappedMemoryReadWord ;
 int assem_debug (char*) ;
 int assert (int) ;
 int emit_call (int) ;
 int emit_mov (int,int) ;
 int emit_movimm (int ,int ) ;
 int emit_movsbl_reg (int,int) ;
 int emit_movswl_reg (int,int) ;
 int get_reg (char*,int) ;
 int restore_regs (int ) ;
 int save_regs (int ) ;

inline_readstub(int type, int i, u32 addr, signed char regmap[], int target, int adj, u32 reglist)
{
  assem_debug("inline_readstub\n");

  int rt=get_reg(regmap,target);

  if(rt<0) rt=get_reg(regmap,-1);
  assert(rt>=0);
  save_regs(reglist);
  emit_movimm(addr,EDI);
  if(type==LOADB_STUB)
    emit_call((int)MappedMemoryReadByte);
  if(type==LOADW_STUB)
    emit_call((int)MappedMemoryReadWord);
  if(type==LOADL_STUB)
    emit_call((int)MappedMemoryReadLong);
  assert(type!=LOADS_STUB);
  if(type==LOADB_STUB)
  {
    if(rt>=0) emit_movsbl_reg(EAX,rt);
  }
  else if(type==LOADW_STUB)
  {
    if(rt>=0) emit_movswl_reg(EAX,rt);
  }
  else
  {
    if(rt!=EAX&&rt>=0) emit_mov(EAX,rt);
  }
  restore_regs(reglist);
}
