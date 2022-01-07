
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int iram_context; } ;
struct TYPE_4__ {TYPE_1__ drc; } ;


 int A_COND_AL ;
 int EL_ANOMALY ;
 int EOP_SUB_IMM (int,int,int ,int) ;
 int SSP_BLOCKTAB_IRAM_ONE ;
 int elprintf (int ,char*,int) ;
 int emith_call_cond (int,int ) ;
 int emith_jump (int *) ;
 int emith_jump_cond (int,int *) ;
 TYPE_2__* ssp ;
 int ** ssp_block_table ;
 int ** ssp_block_table_iram ;
 int * ssp_drc_next ;
 int ssp_drc_next_patch ;
 void* tcache_ptr ;
 int tr_neg_cond (int) ;

__attribute__((used)) static void *emit_block_epilogue(int cycles, int cond, int pc, int end_pc)
{
 void *end_ptr = ((void*)0);

 if (cycles > 0xff) {
  elprintf(EL_ANOMALY, "large cycle count: %i\n", cycles);
  cycles = 0xff;
 }
 EOP_SUB_IMM(11,11,0,cycles);

 if (cond < 0 || (end_pc >= 0x400 && pc < 0x400)) {

  emith_jump(ssp_drc_next);
 }
 else if (cond == A_COND_AL) {
  u32 *target = (pc < 0x400) ?
   ssp_block_table_iram[ssp->drc.iram_context * SSP_BLOCKTAB_IRAM_ONE + pc] :
   ssp_block_table[pc];
  if (target != ((void*)0))
   emith_jump(target);
  else {
   int ops = emith_jump(ssp_drc_next);
   end_ptr = tcache_ptr;

   tcache_ptr -= ops;
  }
 }
 else {
  u32 *target1 = (pc < 0x400) ?
   ssp_block_table_iram[ssp->drc.iram_context * SSP_BLOCKTAB_IRAM_ONE + pc] :
   ssp_block_table[pc];
  u32 *target2 = (end_pc < 0x400) ?
   ssp_block_table_iram[ssp->drc.iram_context * SSP_BLOCKTAB_IRAM_ONE + end_pc] :
   ssp_block_table[end_pc];
  if (target1 != ((void*)0))
       emith_jump_cond(cond, target1);
  if (target2 != ((void*)0))
       emith_jump_cond(tr_neg_cond(cond), target2);


  if (target1 == ((void*)0))
   emith_call_cond(cond, ssp_drc_next_patch);
  if (target2 == ((void*)0))
   emith_call_cond(tr_neg_cond(cond), ssp_drc_next_patch);





 }

 if (end_ptr == ((void*)0))
  end_ptr = tcache_ptr;

 return end_ptr;
}
