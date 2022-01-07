
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InstImm (char*,int ,int ,int ,int) ;
 int PPC_STFS ;
 int PPC_STW ;
 int R_OPSTACK ;
 int assert (int) ;
 int * opStackFloatRegisters ;
 int * opStackIntRegisters ;
 int* opStackRegType ;

__attribute__((used)) static void spillOpStack(int depth)
{

 int i;

 for(i = 0; i < depth; i++)
 {
  assert(opStackRegType[i]);
  assert(opStackRegType[i] == 1);
  switch(opStackRegType[i])
  {
   case 1:
    InstImm( "stw", PPC_STW, opStackIntRegisters[i], R_OPSTACK, i*4+4);
    break;
   case 2:
    InstImm( "stfs", PPC_STFS, opStackFloatRegisters[i], R_OPSTACK, i*4+4);
    break;
  }
  opStackRegType[i] = 0;
 }
}
