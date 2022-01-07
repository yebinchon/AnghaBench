
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assem_debug (char*,...) ;
 int const_one ;
 int const_zero ;
 scalar_t__ out ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_cmovs(u32 *addr,int rt)
{
  assem_debug("cmovs %x,%%%s",(int)addr,regname[rt]);
  if(addr==&const_zero) assem_debug(" [zero]\n");
  else if(addr==&const_one) assem_debug(" [one]\n");
  else assem_debug("\n");
  output_byte(0x0F);
  output_byte(0x48);
  output_modrm(0,5,rt);
  output_w32((int)addr-(int)out-4);
}
