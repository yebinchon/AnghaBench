
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t HOST_TEMPREG ;
 int assem_debug (char*,int ,int ,int ) ;
 int assert (int) ;
 int emit_shlimm (int,int,size_t) ;
 int emit_writehword_indexed (int,int,int) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int,size_t) ;
 int * regname ;

void emit_writehword_indexed_map(int rt, int addr, int rs, int map, int temp)
{
  if(map<0) emit_writehword_indexed(rt, addr, rs);
  else {
    if(addr==0) {
      emit_shlimm(map,2,HOST_TEMPREG);
      assem_debug("strh %s,%s+%s\n",regname[rt],regname[rs],regname[HOST_TEMPREG]);
      output_w32(0xe18000b0|rd_rn_rm(rt,rs,HOST_TEMPREG));
    }else{
      assert(addr==0);
    }
  }
}
