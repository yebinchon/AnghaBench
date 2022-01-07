
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regstat {int dummy; } ;
typedef int s16 ;


 int alloc_reg (struct regstat*,int,int ) ;
 int clear_const (struct regstat*,int ) ;
 int dirty_reg (struct regstat*,int ) ;
 int* imm ;
 int* opcode ;
 int * rt1 ;
 int set_const (struct regstat*,int ,int) ;
 unsigned int slen ;
 int* source ;
 int start ;

void pcrel_alloc(struct regstat *current,int i)
{
  u32 addr;
  alloc_reg(current,i,rt1[i]);
  addr=((start+i*2+4)&~3)+imm[i];
  if(opcode[i]==12) {
    set_const(current,rt1[i],addr);
  }else if((unsigned)((addr-start)>>1)<slen) {
    if(opcode[i]==9) {
      addr=(start+i*2+4)+imm[i];
      set_const(current,rt1[i],(s16)source[(addr-start)>>1]);
    }
    else
      set_const(current,rt1[i],(source[(addr-start)>>1]<<16)+source[(addr+2-start)>>1]);
  }
  else {


    clear_const(current,rt1[i]);
  }
  dirty_reg(current,rt1[i]);
}
