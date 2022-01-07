
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ) ;
 int output_byte (int) ;
 int output_modrm (int,int,int ) ;
 int * regname ;

void emit_rotl(int t)
{
  assem_debug("rol %%%s\n",regname[t]);
  output_byte(0xD1);
  output_modrm(3,t,0);
}
