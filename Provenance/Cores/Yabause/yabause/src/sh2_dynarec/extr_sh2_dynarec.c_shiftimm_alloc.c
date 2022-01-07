
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {long long u; } ;


 int SR ;
 long long TBIT ;
 int alloc_reg (struct regstat*,int,int ) ;
 int clear_const (struct regstat*,int ) ;
 int dirty_reg (struct regstat*,int ) ;
 int* opcode ;
 int* opcode2 ;
 int* opcode3 ;
 int * rs1 ;
 int * rs2 ;
 int * rt1 ;

void shiftimm_alloc(struct regstat *current,int i)
{
  clear_const(current,rs1[i]);
  clear_const(current,rt1[i]);
  alloc_reg(current,i,rs1[i]);
  alloc_reg(current,i,rt1[i]);
  dirty_reg(current,rt1[i]);
  if(opcode[i]==4) {
    if(opcode2[i]<6) {
      if(opcode2[i]<4||opcode3[i]<2) {

        if(!(current->u&(1LL<<TBIT))) {
          alloc_reg(current,i,SR);
          dirty_reg(current,SR);
        }
      }
      else {
        alloc_reg(current,i,SR);
        dirty_reg(current,SR);
      }
    }
  }
  if(opcode[i]==2&opcode2[i]==13) {
    clear_const(current,rs2[i]);
    alloc_reg(current,i,rs2[i]);
  }
}
