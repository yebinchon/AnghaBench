
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int emit_cmpmem_indexed (scalar_t__,int,int) ;
 int emit_jmpmem_indexed (scalar_t__,int) ;
 int emit_jne (int ) ;
 int ** jump_vaddr_reg ;
 scalar_t__ mini_ht_master ;
 scalar_t__ mini_ht_slave ;
 int slave ;

void do_miniht_jump(int rs,int rh,int ht) {
  emit_cmpmem_indexed(slave?(u32)mini_ht_slave:(u32)mini_ht_master,rh,rs);
  emit_jne(jump_vaddr_reg[slave][rs]);
  emit_jmpmem_indexed(slave?(u32)mini_ht_slave+4:(u32)mini_ht_master+4,rh);
}
