
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int dummy; } ;


 int GBR ;
 scalar_t__ GBRIND ;
 int MOREG ;
 scalar_t__ REGIND ;
 int SR ;
 scalar_t__ TBIT ;
 scalar_t__* addrmode ;
 int alloc_reg (struct regstat*,int,int ) ;
 int alloc_reg_temp (struct regstat*,int,int) ;
 int clear_const (struct regstat*,int ) ;
 int dirty_reg (struct regstat*,int ) ;
 int is_const (struct regstat*,int ) ;
 int* minimum_free_regs ;
 scalar_t__ needed_again (int ,int) ;
 int * rs1 ;
 int * rs2 ;
 int * rs3 ;
 scalar_t__* rt1 ;

void rmw_alloc(struct regstat *current,int i)
{

  if(addrmode[i]==GBRIND) {
    alloc_reg(current,i,GBR);
    alloc_reg(current,i,0);
    if(!is_const(current,rs2[i])||!is_const(current,rs3[i])) {

      clear_const(current,rs2[i]);
      clear_const(current,rs3[i]);
    }
  }
  if(addrmode[i]==REGIND&&needed_again(rs1[i],i)) alloc_reg(current,i,rs1[i]);
  if(rt1[i]==TBIT) {
    alloc_reg(current,i,SR);
    dirty_reg(current,SR);
  }


  alloc_reg(current,i,MOREG);


  alloc_reg_temp(current,i,-1);


  minimum_free_regs[i]=1;
}
