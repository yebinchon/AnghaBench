
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int programStack; int (* systemCall ) (int*) ;scalar_t__ dataBase; } ;
typedef TYPE_1__ vm_t ;
typedef int byte ;


 int* callOpStack ;
 int callProgramStack ;
 int callSyscallNum ;
 TYPE_1__* currentVM ;
 int stub1 (int*) ;

void callAsmCall(void)
{
 vm_t *savedVM;
 int *callOpStack2;

 savedVM = currentVM;
 callOpStack2 = callOpStack;


 currentVM->programStack = callProgramStack - 4;
 *(int *)((byte *)currentVM->dataBase + callProgramStack + 4) = callSyscallNum;

 *(callOpStack2+1) = currentVM->systemCall( (int *)((byte *)currentVM->dataBase + callProgramStack + 4) );

  currentVM = savedVM;
}
