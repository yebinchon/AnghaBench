
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_leairrx1 (int ,int,int,int) ;

int gen_tlb_addr_w(int ar, int map) {
  if(map>=0) {
    emit_leairrx1(0,ar,map,ar);
  }
}
