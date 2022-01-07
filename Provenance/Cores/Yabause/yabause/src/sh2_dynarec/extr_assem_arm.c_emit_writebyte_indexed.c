
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ,int) ;
 int assert (int) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int,int ) ;
 int * regname ;

void emit_writebyte_indexed(int rt, int offset, int rs)
{
  assert(offset>-4096&&offset<4096);
  assem_debug("strb %s,%s+%d\n",regname[rt],regname[rs],offset);
  if(offset>=0) {
    output_w32(0xe5c00000|rd_rn_rm(rt,rs,0)|offset);
  }else{
    output_w32(0xe5400000|rd_rn_rm(rt,rs,0)|(-offset));
  }
}
