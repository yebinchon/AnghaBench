
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int output_rex (int,int,int ,int) ;
 int * regname ;

void emit_mov64(int rs,int rt)
{
  assem_debug("mov %%%s,%%%s\n",regname[rs],regname[rt]);
  output_rex(1,rs>>3,0,rt>>3);
  output_byte(0x89);
  output_modrm(3,rt&7,rs&7);
}
