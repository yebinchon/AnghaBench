
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Inst (char*,int ,int ,int ,int ) ;
 int InstImm (char*,unsigned int,int ,int ,int) ;
 unsigned int PPC_LFS ;
 unsigned int PPC_LFSX ;
 unsigned int PPC_LWZ ;
 int PPC_ORI ;
 unsigned int PPC_STW ;
 int R_OPSTACK ;
 int * opStackFloatRegisters ;
 int * opStackIntRegisters ;
 unsigned int** opStackLoadInstructionAddr ;
 int* opStackRegType ;

__attribute__((used)) static void makeFloat(int depth)
{

 if(opStackRegType[depth] == 1)
 {
  unsigned instruction;
  unsigned destReg, aReg, bReg, imm;

  if(opStackLoadInstructionAddr[depth])
  {

   instruction = *opStackLoadInstructionAddr[depth];

   if((instruction & 0xfc000000) == PPC_LWZ)
   {



    destReg = (instruction >> 21) & 31;
    aReg = (instruction >> 16) & 31;
    imm = instruction & 0xffff;




    destReg = (destReg - opStackIntRegisters[0]) + opStackFloatRegisters[0];
    instruction = PPC_LFS | ( destReg << 21 ) | ( aReg << 16 ) | imm ;


   }
   else
   {



    destReg = (instruction >> 21) & 31;
    aReg = (instruction >> 16) & 31;
    bReg = (instruction >> 11) & 31;



    destReg = (destReg - opStackIntRegisters[0]) + opStackFloatRegisters[0];
    instruction = PPC_LFSX | ( destReg << 21 ) | ( aReg << 16 ) | ( bReg << 11 ) ;


   }
   *opStackLoadInstructionAddr[depth] = instruction;
   opStackLoadInstructionAddr[depth] = 0;
  }
  else
  {




   InstImm( "stw", PPC_STW, opStackIntRegisters[depth], R_OPSTACK, depth*4+4);


   Inst( "ori", PPC_ORI, 0, 0, 0 );
   Inst( "ori", PPC_ORI, 0, 0, 0 );
   Inst( "ori", PPC_ORI, 0, 0, 0 );
   Inst( "ori", PPC_ORI, 0, 0, 0 );
   InstImm( "lfs", PPC_LFS, opStackFloatRegisters[depth], R_OPSTACK, depth*4+4);
  }
  opStackRegType[depth] = 2;
 }
}
