
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ) ;
 int emit_sarimm (int,int,int) ;
 int emit_shlimm (int,int,int) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int ,int) ;
 int * regname ;

void emit_movsbl_reg(int rs, int rt)
{




  emit_shlimm(rs,24,rt);
  emit_sarimm(rt,24,rt);

}
