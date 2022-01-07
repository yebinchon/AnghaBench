
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_cmp (int,int) ;
 int emit_jmp (int ) ;
 int emit_ldreq_indexed (int,int,int) ;
 int emit_mov (int,int) ;
 int ** jump_vaddr_reg ;
 size_t slave ;

void do_miniht_jump(int rs,int rh,int ht) {
  emit_cmp(rh,rs);
  emit_ldreq_indexed(ht,4,15);




  emit_jmp(jump_vaddr_reg[slave][rs]);

}
