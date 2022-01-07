
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int regmap; int regmap_entry; } ;
typedef int pointer ;


 int EBP ;
 int EDI ;
 int MACH ;
 int MACL ;
 int assert (int ) ;
 scalar_t__ div1 ;
 int emit_addimm (int,int,int) ;
 int emit_call (int ) ;
 int emit_mov (int,int) ;
 int load_regs (int ,int ,int ,int ,int ) ;
 scalar_t__ macl ;
 scalar_t__ macw ;
 int* opcode ;
 int* opcode2 ;
 scalar_t__* rs1 ;
 scalar_t__* rs2 ;

void complex_assemble(int i,struct regstat *i_regs)
{
  if(opcode[i]==3&&opcode2[i]==4) {
    emit_call((pointer)div1);
  }
  if(opcode[i]==0&&opcode2[i]==15) {
    load_regs(i_regs->regmap_entry,i_regs->regmap,MACL,MACH,MACH);



    if(rs1[i]==rs2[i]) {emit_mov(EDI,EBP);emit_addimm(EDI,4,EDI);}
    emit_call((pointer)macl);
  }
  if(opcode[i]==4&&opcode2[i]==15) {
    load_regs(i_regs->regmap_entry,i_regs->regmap,MACL,MACH,MACH);



    if(rs1[i]==rs2[i]) {emit_mov(EDI,EBP);emit_addimm(EDI,2,EDI);}
    emit_call((pointer)macw);
  }
}
