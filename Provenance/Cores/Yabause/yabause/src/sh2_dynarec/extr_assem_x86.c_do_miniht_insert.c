
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_to_linker (int,int,int) ;
 int emit_movimm (int,int) ;
 int emit_writeword (int,int) ;
 int emit_writeword_imm (int ,int) ;
 int ** mini_ht_master ;
 int ** mini_ht_slave ;
 scalar_t__ out ;
 scalar_t__ slave ;

void do_miniht_insert(int return_address,int rt,int temp) {
  emit_movimm(return_address,rt);

  if(slave) emit_writeword(rt,(int)&mini_ht_slave[(return_address&0xFF)>>3][0]);
  else emit_writeword(rt,(int)&mini_ht_master[(return_address&0xFF)>>3][0]);
  add_to_linker((int)out,return_address,1);
  if(slave) emit_writeword_imm(0,(int)&mini_ht_slave[(return_address&0xFF)>>3][1]);
  else emit_writeword_imm(0,(int)&mini_ht_master[(return_address&0xFF)>>3][1]);
}
