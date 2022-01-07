
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAX ;
 int assem_debug (char*,int ,int,int *) ;
 int emit_xchg (int,int) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int output_w32 (int) ;
 int ** regname ;

void emit_writebyte_indexed(int rt, int addr, int rs)
{
  if(rt<4) {
    assem_debug("movb %%%cl,%x+%%%s\n",regname[rt][1],addr,regname[rs]);
    output_byte(0x88);
    if(addr<128&&addr>=-128) {
      output_modrm(1,rs,rt);
      output_byte(addr);
    }
    else
    {
      output_modrm(2,rs,rt);
      output_w32(addr);
    }
  }
  else
  {
    emit_xchg(EAX,rt);
    emit_writebyte_indexed(EAX,addr,rs==EAX?rt:rs);
    emit_xchg(EAX,rt);
  }
}
