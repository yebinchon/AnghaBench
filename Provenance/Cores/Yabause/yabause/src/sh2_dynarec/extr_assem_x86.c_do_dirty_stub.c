
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EAX ;
 int EBX ;
 int ECX ;
 int ESP ;
 scalar_t__ alignedsource ;
 int assem_debug (char*,scalar_t__) ;
 scalar_t__ copy ;
 int emit_addimm (int ,int,int ) ;
 int emit_call (int) ;
 int emit_jmp (int) ;
 int emit_movimm (int,int ) ;
 int emit_pushimm (scalar_t__) ;
 int* instr_addr ;
 int load_regs_entry (int) ;
 scalar_t__ out ;
 scalar_t__ slave ;
 int slen ;
 scalar_t__ source ;
 scalar_t__ start ;
 int verify_code ;

int do_dirty_stub(int i)
{
  assem_debug("do_dirty_stub %x\n",start+i*2);
  u32 alignedlen=((((u32)source)+slen*2+2)&~2)-(u32)alignedsource;
  emit_pushimm(start+i*2+slave);
  emit_movimm(((u32)source)&~3,EAX);
  emit_movimm((u32)copy,EBX);
  emit_movimm((((u32)source+slen*2+2)&~3)-((u32)source&~3),ECX);
  emit_call((int)&verify_code);
  emit_addimm(ESP,4,ESP);
  int entry=(int)out;
  load_regs_entry(i);
  if(entry==(int)out) entry=instr_addr[i];
  emit_jmp(instr_addr[i]);
  return entry;
}
