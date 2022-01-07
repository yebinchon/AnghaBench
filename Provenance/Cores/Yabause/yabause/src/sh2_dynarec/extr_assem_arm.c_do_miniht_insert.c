
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int add_to_linker (int,int,int) ;
 int emit_movimm (int,int) ;
 int emit_movt (int,int) ;
 int emit_movw (int,int) ;
 int emit_pcreladdr (int) ;
 int emit_writeword (int,int) ;
 int ** mini_ht_master ;
 int ** mini_ht_slave ;
 scalar_t__ out ;
 scalar_t__ slave ;

void do_miniht_insert(u32 return_address,int rt,int temp) {

  emit_movimm(return_address,rt);
  add_to_linker((int)out,return_address,1);
  emit_pcreladdr(temp);
  if(slave) emit_writeword(rt,(int)&mini_ht_slave[(return_address&0xFF)>>3][0]);
  else emit_writeword(rt,(int)&mini_ht_master[(return_address&0xFF)>>3][0]);
  if(slave) emit_writeword(temp,(int)&mini_ht_slave[(return_address&0xFF)>>3][1]);
  else emit_writeword(temp,(int)&mini_ht_master[(return_address&0xFF)>>3][1]);
}
