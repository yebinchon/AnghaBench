
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assem_debug (char*) ;
 int output_w32 (int) ;

void save_regs(u32 reglist)
{
  reglist&=0x100f;
  if(!reglist) return;
  assem_debug("stmia fp,{");
  if(reglist&1) assem_debug("r0, ");
  if(reglist&2) assem_debug("r1, ");
  if(reglist&4) assem_debug("r2, ");
  if(reglist&8) assem_debug("r3, ");
  if(reglist&0x1000) assem_debug("r12");
  assem_debug("}\n");
  output_w32(0xe88b0000|reglist);
}
