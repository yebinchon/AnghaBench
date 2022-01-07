
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ,int ) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int,int) ;
 int * regname ;

int gen_tlb_addr_w(int ar, int map) {
  if(map>=0) {
    assem_debug("add %s,%s,%s lsl #2\n",regname[ar],regname[ar],regname[map]);
    output_w32(0xe0800100|rd_rn_rm(ar,ar,map));
  }
}
