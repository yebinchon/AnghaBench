
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FP ;
 int dynarec_local ;
 int emit_addimm (int ,int,int) ;
 int mini_ht_master ;
 int mini_ht_slave ;
 scalar_t__ slave ;

void do_preload_rhtbl(int ht) {
  if(slave) emit_addimm(FP,(int)&mini_ht_slave-(int)&dynarec_local,ht);
  else emit_addimm(FP,(int)&mini_ht_master-(int)&dynarec_local,ht);
}
