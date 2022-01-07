
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAX ;
 int assem_debug (char*,int ,int ) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int * regname ;

void emit_xchg(int rs, int rt)
{
  assem_debug("xchg %%%s,%%%s\n",regname[rs],regname[rt]);
  if(rs==EAX) {
    output_byte(0x90+rt);
  }
  else
  {
    output_byte(0x87);
    output_modrm(3,rs,rt);
  }
}
