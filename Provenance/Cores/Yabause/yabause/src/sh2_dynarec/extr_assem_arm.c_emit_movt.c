
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assem_debug (char*,int ,int,int) ;
 int output_w32 (int) ;
 int rd_rn_rm (unsigned int,int ,int ) ;
 int * regname ;

void emit_movt(u32 imm,unsigned int rt)
{
  assem_debug("movt %s,#%d (0x%x)\n",regname[rt],imm&0xffff0000,imm&0xffff0000);
  output_w32(0xe3400000|rd_rn_rm(rt,0,0)|((imm>>16)&0xfff)|((imm>>12)&0xf0000));
}
