
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dataBase; } ;
typedef TYPE_1__ vm_t ;


 int Com_Printf (char*,int ) ;
 int VM_ValueToSymbol (TYPE_1__*,int) ;

void VM_StackTrace( vm_t *vm, int programCounter, int programStack ) {
 int count;

 count = 0;
 do {
  Com_Printf( "%s\n", VM_ValueToSymbol( vm, programCounter ) );
  programStack = *(int *)&vm->dataBase[programStack+4];
  programCounter = *(int *)&vm->dataBase[programStack];
 } while ( programCounter != -1 && ++count < 32 );

}
