
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int dummy; } ;
 int alu_alloc (struct regstat*,int) ;
 int assem_debug (char*) ;
 int complex_alloc (struct regstat*,int) ;
 int ext_alloc (struct regstat*,int) ;
 int flags_alloc (struct regstat*,int) ;
 int imm8_alloc (struct regstat*,int) ;
 int* itype ;
 int load_alloc (struct regstat*,int) ;
 int mov_alloc (struct regstat*,int) ;
 int multdiv_alloc (struct regstat*,int) ;
 int pcrel_alloc (struct regstat*,int) ;
 int printf (char*) ;
 int rmw_alloc (struct regstat*,int) ;
 int shiftimm_alloc (struct regstat*,int) ;
 int stop_after_jal ;
 int store_alloc (struct regstat*,int) ;

void delayslot_alloc(struct regstat *current,int i)
{
  switch(itype[i]) {
    case 128:
    case 143:
    case 131:
    case 134:
    case 129:
      assem_debug("jump in the delay slot.  this shouldn't happen.\n");
      printf("Disabled speculative precompilation\n");
      stop_after_jal=1;
      break;
    case 139:
      imm8_alloc(current,i);
      break;
    case 138:
      load_alloc(current,i);
      break;
    case 130:
      store_alloc(current,i);
      break;
    case 133:
      rmw_alloc(current,i);
      break;
    case 135:
      pcrel_alloc(current,i);
      break;
    case 144:
      alu_alloc(current,i);
      break;
    case 136:
      multdiv_alloc(current,i);
      break;
    case 132:
      shiftimm_alloc(current,i);
      break;
    case 137:
      mov_alloc(current,i);
      break;
    case 141:
      ext_alloc(current,i);
      break;
    case 140:
      flags_alloc(current,i);
      break;
    case 142:
      complex_alloc(current,i);
      break;
  }
}
