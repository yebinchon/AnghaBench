
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ,int ) ;
 int assert (int) ;
 int emit_mov (unsigned int,int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_multiply(unsigned int rs1,unsigned int rs2,unsigned int rt)
{
  if(rs1==rt&&rs2==rt) {emit_mov(rs1,14);emit_multiply(14,14,rt);}
  else if(rs1==rt) {emit_multiply(rs2,rs1,rt);}
  else {
    assem_debug("mul %s, %s, %s\n",regname[rt],regname[rs1],regname[rs2]);
    assert(rs1<16);
    assert(rs2<16);
    assert(rt<16);
    output_w32(0xe0000090|(rt<<16)|(rs2<<8)|rs1);
  }
}
