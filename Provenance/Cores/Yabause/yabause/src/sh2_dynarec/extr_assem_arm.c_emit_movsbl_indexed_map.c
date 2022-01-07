
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t HOST_TEMPREG ;
 int assem_debug (char*,int ,int ,int ) ;
 int assert (int) ;
 int emit_movsbl_indexed (int,int,int) ;
 int emit_shlimm (int,int,size_t) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int,int) ;
 int * regname ;

void emit_movsbl_indexed_map(int addr, int rs, int map, int rt)
{
  if(map<0) emit_movsbl_indexed(addr, rs, rt);
  else {
    if(addr==0) {
      emit_shlimm(map,2,HOST_TEMPREG);
      assem_debug("ldrsb %s,%s+%s\n",regname[rt],regname[rs],regname[HOST_TEMPREG]);
      output_w32(0xe19000d0|rd_rn_rm(rt,rs,HOST_TEMPREG));
    }else{
      assert(addr>-256&&addr<256);
      assem_debug("add %s,%s,%s,lsl #2\n",regname[rt],regname[rs],regname[map]);
      output_w32(0xe0800000|rd_rn_rm(rt,rs,map)|(2<<7));
      emit_movsbl_indexed(addr, rt, rt);
    }
  }
}
