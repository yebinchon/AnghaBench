
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int dummy; } ;


 int alloc_reg (struct regstat*,int,int ) ;
 int clear_const (struct regstat*,int ) ;
 int dirty_reg (struct regstat*,int ) ;
 int * rs1 ;
 int * rt1 ;

void mov_alloc(struct regstat *current,int i)
{



  alloc_reg(current,i,rt1[i]);
  clear_const(current,rs1[i]);
  clear_const(current,rt1[i]);
  dirty_reg(current,rt1[i]);
}
