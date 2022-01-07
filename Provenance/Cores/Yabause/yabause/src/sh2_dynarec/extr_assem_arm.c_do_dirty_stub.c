
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ alignedsource ;
 int assem_debug (char*,scalar_t__) ;
 scalar_t__ copy ;
 int emit_call (int) ;
 int emit_jmp (int) ;
 int emit_loadlp (int,int) ;
 int emit_movimm (scalar_t__,int ) ;
 int emit_movt (int,int) ;
 int emit_movw (int,int) ;
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


  emit_loadlp(((int)source&~3),1);
  emit_loadlp((int)copy,2);
  emit_loadlp((((u32)source+slen*2+2)&~3)-((u32)source&~3),3);







  emit_movimm(start+i*2+slave,0);
  emit_call((int)&verify_code);
  int entry=(int)out;
  load_regs_entry(i);
  if(entry==(int)out) entry=instr_addr[i];
  emit_jmp(instr_addr[i]);
  return entry;
}
