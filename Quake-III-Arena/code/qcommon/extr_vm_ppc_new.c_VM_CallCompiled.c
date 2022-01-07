
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int programStack; int dataMask; int instructionPointersLength; int currentlyInterpreting; scalar_t__ instructionPointers; scalar_t__ codeBase; int * dataBase; } ;
typedef TYPE_1__ vm_t ;
typedef int byte ;


 int AsmCall ;
 TYPE_1__* currentVM ;
 int qfalse ;
 int qtrue ;
 void stub1 (int,int,int,int,int,int,int,int) ;
 void stub2 (int,int,int,int,int,int,int,int) ;

int VM_CallCompiled( vm_t *vm, int *args ) {
 int stack[1024];
 int programStack;
 int stackOnEntry;
 byte *image;

 currentVM = vm;





 vm->currentlyInterpreting = qtrue;


 programStack = vm->programStack;
 stackOnEntry = programStack;
 image = vm->dataBase;


 programStack -= 48;

 *(int *)&image[ programStack + 44] = args[9];
 *(int *)&image[ programStack + 40] = args[8];
 *(int *)&image[ programStack + 36] = args[7];
 *(int *)&image[ programStack + 32] = args[6];
 *(int *)&image[ programStack + 28] = args[5];
 *(int *)&image[ programStack + 24] = args[4];
 *(int *)&image[ programStack + 20] = args[3];
 *(int *)&image[ programStack + 16] = args[2];
 *(int *)&image[ programStack + 12] = args[1];
 *(int *)&image[ programStack + 8 ] = args[0];
 *(int *)&image[ programStack + 4 ] = 0;
 *(int *)&image[ programStack ] = -1;






 ((void(*)(int, int, int, int, int, int, int, int))(vm->codeBase))(
  programStack, (int)&stack,
  (int)image, vm->dataMask, (int)&AsmCall,
  (int)vm->instructionPointers, vm->instructionPointersLength,
        (int)vm );







 vm->programStack = stackOnEntry;

    vm->currentlyInterpreting = qfalse;

 return stack[1];
}
