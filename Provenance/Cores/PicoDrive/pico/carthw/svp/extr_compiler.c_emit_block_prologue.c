
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_COND_LE ;
 int EOP_CMP_IMM (int,int ,int ) ;
 int emith_jump_cond (int ,int ) ;
 int ssp_drc_end ;

__attribute__((used)) static void emit_block_prologue(void)
{


 EOP_CMP_IMM(11,0,0);
 emith_jump_cond(A_COND_LE, ssp_drc_end);
}
