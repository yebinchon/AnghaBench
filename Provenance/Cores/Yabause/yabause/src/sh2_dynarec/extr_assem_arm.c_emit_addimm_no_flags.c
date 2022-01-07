
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int emit_addimm (unsigned int,int ,unsigned int) ;

void emit_addimm_no_flags(u32 imm,unsigned int rt)
{
  emit_addimm(rt,imm,rt);
}
