
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ,int ) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int,int) ;
 int * regname ;

void do_miniht_load(int ht,int rh) {
  assem_debug("ldr %s,[%s,%s]!\n",regname[rh],regname[ht],regname[rh]);
  output_w32(0xe7b00000|rd_rn_rm(rh,ht,rh));
}
