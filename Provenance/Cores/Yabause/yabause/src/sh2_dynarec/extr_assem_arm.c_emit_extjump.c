
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int pointer ;


 int Count ;
 int ECX ;
 int HOST_CCREG ;
 int assert (int) ;
 scalar_t__ dyna_linker ;
 int emit_add (int ,int ,int ) ;
 int emit_jmp (int) ;
 int emit_loadlp (int,int) ;
 int emit_readword (int,int ) ;
 int emit_sub (int ,int ,int ) ;
 int emit_writeword (int ,int) ;
 int last_count ;
 int next_interupt ;

emit_extjump(pointer addr, int target)
{
  u8 *ptr=(u8 *)addr;
  assert((ptr[3]&0x0e)==0xa);
  emit_loadlp(target,0);
  emit_loadlp(addr,1);
  emit_jmp((pointer)dyna_linker);
}
