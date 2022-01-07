
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int * regname ;

void emit_cmp(int rs,int rt)
{
  assem_debug("cmp %%%s,%%%s\n",regname[rt],regname[rs]);
  output_byte(0x39);
  output_modrm(3,rs,rt);
}
