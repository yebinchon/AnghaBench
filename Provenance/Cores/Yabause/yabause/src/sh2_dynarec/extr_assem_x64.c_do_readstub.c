
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regstat {char* regmap; } ;


 int AGEN1 ;
 int EAX ;
 int ECX ;
 int EDI ;
 int EDX ;
 int ESI ;
 int LOADB_STUB ;
 int LOADL_STUB ;
 int LOADS_STUB ;
 int LOADW_STUB ;
 scalar_t__ MappedMemoryReadByte ;
 scalar_t__ MappedMemoryReadLong ;
 scalar_t__ MappedMemoryReadWord ;
 int RTEMP ;
 int TBIT ;
 int assem_debug (char*,scalar_t__) ;
 int assert (int) ;
 int emit_addimm (int,int,int) ;
 int emit_call (int) ;
 int emit_jmp (int) ;
 int emit_mov (int,int) ;
 int emit_movsbl_reg (int,int) ;
 int emit_movswl_reg (int,int) ;
 int emit_xorimm (int,int,int) ;
 int get_reg (char*,int) ;
 scalar_t__ out ;
 int restore_regs (int) ;
 int* rt1 ;
 int save_regs (int) ;
 int set_jump_target (int,int) ;
 scalar_t__ start ;
 int** stubs ;

do_readstub(int n)
{
  assem_debug("do_readstub %x\n",start+stubs[n][3]*2);
  set_jump_target(stubs[n][1],(int)out);
  int type=stubs[n][0];
  int i=stubs[n][3];
  int rs=stubs[n][4];
  struct regstat *i_regs=(struct regstat *)stubs[n][5];
  u32 reglist=stubs[n][7];
  signed char *i_regmap=i_regs->regmap;
  int addr=get_reg(i_regmap,AGEN1+(i&1));
  int rt;

  rt=get_reg(i_regmap,rt1[i]==TBIT?-1:rt1[i]);
  assert(rs>=0);
  if(addr<0) addr=rt;
  if(addr<0) addr=get_reg(i_regmap,-1);
  assert(addr>=0);
  save_regs(reglist);
  if(rs!=EDI) emit_mov(rs,EDI);
  if(type==LOADB_STUB) emit_xorimm(EDI,1,EDI);
  if(type==LOADB_STUB)
    emit_call((int)MappedMemoryReadByte);
  if(type==LOADW_STUB)
    emit_call((int)MappedMemoryReadWord);
  if(type==LOADL_STUB)
    emit_call((int)MappedMemoryReadLong);
  if(type==LOADS_STUB)
  {

    int pc=get_reg(i_regmap,RTEMP);
    assert(pc>=0);
    if(rs==EAX||rs==ECX||rs==EDX||rs==ESI||rs==EDI)
      emit_mov(rs,12);

    emit_call((int)MappedMemoryReadLong);
    if(rs==EAX||rs==ECX||rs==EDX||rs==ESI)
      emit_mov(12,rs);

    if(pc==EDI) {
      emit_mov(EAX,12);

    }
    else
    {
      if(pc==EAX||pc==ECX||pc==EDX||pc==ESI)
        emit_mov(EAX,12);

      else
        emit_mov(EAX,pc);
      if(rs==EDI) {
        emit_mov(12,EDI);

        emit_addimm(EDI,4,EDI);
      }else
        emit_addimm(rs,4,EDI);
    }
    emit_call((int)MappedMemoryReadLong);
    assert(rt>=0);
    if(rt!=EAX) emit_mov(EAX,rt);
    if(pc==EAX||pc==ECX||pc==EDX||pc==ESI||pc==EDI)
      emit_mov(12,pc);

  }
  else if(type==LOADB_STUB)
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
  if(type==LOADS_STUB) emit_addimm(rs,8,rs);
  emit_jmp(stubs[n][2]);
}
