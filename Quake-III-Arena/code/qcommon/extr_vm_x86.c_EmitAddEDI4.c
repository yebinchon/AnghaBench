
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* instructionPointers; } ;
typedef TYPE_1__ vm_t ;


 int EmitString (char*) ;
 scalar_t__ LAST_COMMAND_SUB_DI_4 ;
 scalar_t__ LAST_COMMAND_SUB_DI_8 ;
 scalar_t__ LastCommand ;
 int compiledOfs ;
 int instruction ;
 scalar_t__* jused ;

__attribute__((used)) static void EmitAddEDI4(vm_t *vm) {
 if (LastCommand == LAST_COMMAND_SUB_DI_4 && jused[instruction-1] == 0)
 {
  compiledOfs -= 3;
  vm->instructionPointers[ instruction-1 ] = compiledOfs;
  return;
 }
 if (LastCommand == LAST_COMMAND_SUB_DI_8 && jused[instruction-1] == 0)
 {
  compiledOfs -= 3;
  vm->instructionPointers[ instruction-1 ] = compiledOfs;
  EmitString( "83 EF 04" );
  return;
 }
 EmitString( "83 C7 04" );
}
