
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int dummy; } ;


 int SR ;
 int alloc_reg (struct regstat*,int,int ) ;
 int clear_const (struct regstat*,int ) ;
 int dirty_reg (struct regstat*,int ) ;
 int* opcode2 ;
 int * rt1 ;

void flags_alloc(struct regstat *current,int i)
{
  if(opcode2[i]==8) {
    alloc_reg(current,i,SR);
    dirty_reg(current,SR);
  }else
  if(opcode2[i]==9) {
    alloc_reg(current,i,SR);
    alloc_reg(current,i,rt1[i]);
    clear_const(current,rt1[i]);
    dirty_reg(current,rt1[i]);
  }
}
