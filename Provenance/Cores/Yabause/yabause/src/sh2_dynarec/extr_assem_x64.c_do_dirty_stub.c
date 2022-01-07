
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int EAX ;
 int EBX ;
 int ECX ;
 scalar_t__ alignedsource ;
 int assem_debug (char*,int) ;
 scalar_t__ copy ;
 int emit_call (int) ;
 int emit_jmp (int) ;
 int emit_movimm (int,int) ;
 int emit_movimm64 (int,int) ;
 int* instr_addr ;
 int load_regs_entry (int) ;
 scalar_t__ out ;
 int slave ;
 int slen ;
 scalar_t__ source ;
 int start ;
 int verify_code ;

int do_dirty_stub(int i)
{
  assem_debug("do_dirty_stub %x\n",start+i*2);
  u32 alignedlen=((((u32)source)+slen*2+2)&~2)-(u32)alignedsource;
  if((u64)source<=0xFFFFFFFF)
    emit_movimm(((u32)source)&~3,EAX);
  else
    emit_movimm64(((u64)source)&~3,EAX);
  emit_movimm((u32)copy,EBX);
  emit_movimm((((u32)source+slen*2+2)&~3)-((u32)source&~3),ECX);
  emit_movimm(start+i*2+slave,12);
  emit_call((int)&verify_code);
  int entry=(int)out;
  load_regs_entry(i);
  if(entry==(int)out) entry=instr_addr[i];
  emit_jmp(instr_addr[i]);
  return entry;
}
