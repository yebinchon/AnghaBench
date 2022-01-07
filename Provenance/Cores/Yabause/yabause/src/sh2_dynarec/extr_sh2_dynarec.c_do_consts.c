
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s16 ;
 size_t MACH ;
 size_t MACL ;



 int POSTINC ;
 int PREDEC ;







 int * addrmode ;
 int assert (int) ;
 int* imm ;
 int* itype ;
 int* opcode ;
 int* opcode2 ;
 int* rs1 ;
 size_t* rt1 ;
 size_t* rt2 ;
 int sh2_clear_const (int*,int*,size_t) ;
 int sh2_set_const (int*,int*,size_t,int) ;
 int slen ;
 int* source ;
 int start ;

do_consts(int i,u32 *isconst,u32 *constmap)
{
  switch(itype[i]) {
    case 138:
      sh2_clear_const(isconst,constmap,rt1[i]);
      if(addrmode[i]==POSTINC) {
        int size=(opcode[i]==4)?2:(opcode2[i]&3);
        constmap[rt2[i]]+=1<<size;
      }
      break;
    case 130:
      if(addrmode[i]==PREDEC) {
        int size=(opcode[i]==4)?2:(opcode2[i]&3);
        constmap[rt1[i]]-=1<<size;
      }
      break;
    case 133:
      break;
    case 135:
      if(opcode[i]==12) sh2_set_const(isconst,constmap,rt1[i],((start+i*2+4)&~3)+imm[i]);
      else {
        u32 addr=((start+i*2+4)&~3)+imm[i];
        if((u32)((addr-start)>>1)<slen) {
          int value;
          if(opcode[i]==9) value=(s16)source[((start+i*2+4)+imm[i]-start)>>1];
          else value=(source[(((start+i*2+4)&~3)+imm[i]-start)>>1]<<16)+source[(((start+i*2+4)&~3)+imm[i]+2-start)>>1];
          sh2_set_const(isconst,constmap,rt1[i],value);
        }
        else sh2_clear_const(isconst,constmap,rt1[i]);
      }
      break;
    case 137:
      if(((*isconst)>>rs1[i])&1) {
        int v=constmap[rs1[i]];
        sh2_set_const(isconst,constmap,rt1[i],v);
      }
      else sh2_clear_const(isconst,constmap,rt1[i]);
      break;
    case 139:
      if(opcode[i]==0x7) {
        if(((*isconst)>>rs1[i])&1) {
          int v=constmap[rs1[i]];
          sh2_set_const(isconst,constmap,rt1[i],v+imm[i]);
        }
        else sh2_clear_const(isconst,constmap,rt1[i]);
      }
      else if(opcode[i]==0x8) {
      }
      else if(opcode[i]==12) {
        if(opcode2[i]==8) {
        }else

        if(((*isconst)>>rs1[i])&1) {
          int v=constmap[rs1[i]];
          if(opcode2[i]==0x09) sh2_set_const(isconst,constmap,rt1[i],v&imm[i]);
          if(opcode2[i]==0x0a) sh2_set_const(isconst,constmap,rt1[i],v^imm[i]);
          if(opcode2[i]==0x0b) sh2_set_const(isconst,constmap,rt1[i],v|imm[i]);
        }
        else sh2_clear_const(isconst,constmap,rt1[i]);
      }
      else {
        assert(opcode[i]==0xE);
        sh2_set_const(isconst,constmap,rt1[i],imm[i]);
      }
      break;
    case 140:
      if(opcode2[i]==9) {
        sh2_clear_const(isconst,constmap,rt1[i]);
      }
      break;
    case 144:
      sh2_clear_const(isconst,constmap,rt1[i]);
      break;
    case 141:
      sh2_clear_const(isconst,constmap,rt1[i]);
      break;
    case 136:
      if(opcode[i]==0) {
        if(opcode2[i]==7)
        {
          sh2_clear_const(isconst,constmap,MACL);
        }
        if(opcode2[i]==8)
        {
          sh2_clear_const(isconst,constmap,MACH);
          sh2_clear_const(isconst,constmap,MACL);
        }
        if(opcode2[i]==9)
        {
        }
      }
      if(opcode[i]==2) {
        if(opcode2[i]==7)
        {
        }
        if(opcode2[i]==14||opcode2[i]==15)
        {
          sh2_clear_const(isconst,constmap,MACL);
        }
      }
      if(opcode[i]==3) {

        sh2_clear_const(isconst,constmap,MACH);
        sh2_clear_const(isconst,constmap,MACL);
      }
      break;
    case 132:
      sh2_clear_const(isconst,constmap,rt1[i]);
      break;
    case 128:
    case 134:
    case 131:
    case 143:
      break;
    case 129:
      *isconst=0;
      break;
    case 142:
      *isconst=0;
      break;
  }
}
