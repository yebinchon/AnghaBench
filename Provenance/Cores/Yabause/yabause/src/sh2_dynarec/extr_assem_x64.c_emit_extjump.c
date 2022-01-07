
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int pointer ;


 int Count ;
 int EAX ;
 int EBX ;
 int ECX ;
 int HOST_CCREG ;
 int assert (int) ;
 scalar_t__ dyna_linker ;
 int emit_add (int ,int ,int ) ;
 int emit_jmp (int) ;
 int emit_movimm (int,int ) ;
 int emit_readword (int,int ) ;
 int emit_sub (int ,int ,int ) ;
 int emit_writeword (int ,int) ;
 int last_count ;
 int next_interupt ;

emit_extjump(pointer addr, int target)
{
  u8 *ptr=(u8 *)addr;
  if(*ptr==0x0f)
  {
    assert(ptr[1]>=0x80&&ptr[1]<=0x8f);
    addr+=2;
  }
  else
  {
    assert(*ptr==0xe8||*ptr==0xe9);
    addr++;
  }
  emit_movimm(target,EAX);
  emit_movimm(addr,EBX);
  emit_jmp((pointer)dyna_linker);
}
