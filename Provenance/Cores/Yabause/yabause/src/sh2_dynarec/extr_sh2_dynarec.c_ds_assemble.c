
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int dummy; } ;
 int alu_assemble (int,struct regstat*) ;
 int complex_assemble (int,struct regstat*) ;
 int ext_assemble (int,struct regstat*) ;
 int flags_assemble (int,struct regstat*) ;
 int imm8_assemble (int,struct regstat*) ;
 int is_delayslot ;
 int* itype ;
 int load_assemble (int,struct regstat*) ;
 int mov_assemble (int,struct regstat*) ;
 int multdiv_assemble (int,struct regstat*) ;
 int pcrel_assemble (int,struct regstat*) ;
 int printf (char*) ;
 int rmw_assemble (int,struct regstat*) ;
 int shiftimm_assemble (int,struct regstat*) ;
 int store_assemble (int,struct regstat*) ;

void ds_assemble(int i,struct regstat *i_regs)
{
  is_delayslot=1;
  switch(itype[i]) {
    case 145:
      alu_assemble(i,i_regs);break;
    case 140:
      imm8_assemble(i,i_regs);break;
    case 133:
      shiftimm_assemble(i,i_regs);break;
    case 139:
      load_assemble(i,i_regs);break;
    case 131:
      store_assemble(i,i_regs);break;
    case 134:
      rmw_assemble(i,i_regs);break;
    case 136:
      pcrel_assemble(i,i_regs);break;
    case 137:
      multdiv_assemble(i,i_regs);break;
    case 138:
      mov_assemble(i,i_regs);break;
    case 142:
      ext_assemble(i,i_regs);break;
    case 141:
      flags_assemble(i,i_regs);break;
    case 143:
      complex_assemble(i,i_regs);break;
    case 129:
    case 130:
    case 128:
    case 135:
    case 144:
    case 132:
      printf("Jump in the delay slot.  This is probably a bug.\n");
  }
  is_delayslot=0;
}
