
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBP ;
 int assem_debug (char*,int ) ;
 int output_byte (int) ;
 int output_modrm (int,int,int ) ;
 int * regname ;

void emit_fadds(int r)
{
  assem_debug("fadds (%%%s)\n",regname[r]);
  output_byte(0xd8);
  if(r!=EBP) output_modrm(0,r,0);
  else {output_modrm(1,EBP,0);output_byte(0);}
}
