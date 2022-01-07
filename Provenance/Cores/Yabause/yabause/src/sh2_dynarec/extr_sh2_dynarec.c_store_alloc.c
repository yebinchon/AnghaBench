
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int* regmap; } ;


 scalar_t__ DUALIND ;
 int MOREG ;
 scalar_t__ PREDEC ;
 scalar_t__* addrmode ;
 int alloc_reg (struct regstat*,int,int) ;
 int alloc_reg_temp (struct regstat*,int,int) ;
 int assert (int) ;
 int clear_const (struct regstat*,int) ;
 int dirty_reg (struct regstat*,int) ;
 int get_const (struct regstat*,int) ;
 int get_reg (int*,int) ;
 scalar_t__ is_const (struct regstat*,int) ;
 int* minimum_free_regs ;
 scalar_t__ needed_again (int,int) ;
 int* opcode ;
 int* opcode2 ;
 int* rs1 ;
 int* rs2 ;
 int* rs3 ;
 int* rt1 ;
 int set_const (struct regstat*,int,int) ;

void store_alloc(struct regstat *current,int i)
{
  int hr;

  if(addrmode[i]==DUALIND) {
    alloc_reg(current,i,rs2[i]);
    alloc_reg(current,i,0);
    if(!is_const(current,rs2[i])||!is_const(current,rs3[i])) {

      clear_const(current,rs2[i]);
      clear_const(current,rs3[i]);
    }
  }
  if(addrmode[i]==PREDEC) {
    if(is_const(current,rt1[i])) {
      int v=get_const(current,rt1[i]);
      set_const(current,rt1[i],v-(1<<((opcode[i]==4)?2:(opcode2[i]&3))));
    }
    else {
      alloc_reg(current,i,rt1[i]);
      dirty_reg(current,rt1[i]);
    }
  }
  if(needed_again(rs2[i],i)) alloc_reg(current,i,rs2[i]);
  clear_const(current,rs1[i]);
  alloc_reg(current,i,rs1[i]);

  alloc_reg(current,i,MOREG);


  alloc_reg_temp(current,i,-1);
  minimum_free_regs[i]=1;


  hr=get_reg(current->regmap,MOREG);
  assert(hr>=0);
  assert(current->regmap[hr]==MOREG);
  current->regmap[hr]=-1;
  minimum_free_regs[i]++;
}
