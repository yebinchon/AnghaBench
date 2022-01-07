
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InstImm (char*,int ,int ,int ,int) ;
 int PPC_LWZ ;
 int R_OPSTACK ;
 int assert (int) ;
 int * buf ;
 size_t compiledOfs ;
 int * opStackIntRegisters ;
 int ** opStackLoadInstructionAddr ;
 int* opStackRegType ;

__attribute__((used)) static void loadOpStack(int depth)
{



 int i;

 for(i = 0; i < depth; i++)
 {
  assert(opStackRegType[i] == 0);

  opStackLoadInstructionAddr[i] = &buf[compiledOfs];
  InstImm( "lwz", PPC_LWZ, opStackIntRegisters[i], R_OPSTACK, i*4+4);
  opStackRegType[i] = 1;
 }
}
