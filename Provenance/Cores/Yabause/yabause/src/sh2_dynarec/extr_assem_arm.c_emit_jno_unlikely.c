
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int,int ) ;

void emit_jno_unlikely(int a)
{

  assem_debug("addvc pc,pc,#? (%x)\n", a);
  output_w32(0x72800000|rd_rn_rm(15,15,0));
}
