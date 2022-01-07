
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codeLength; scalar_t__* instructionPointers; scalar_t__ codeBase; } ;
typedef TYPE_1__ vm_t ;


 char const* VM_ValueToSymbol (TYPE_1__*,int) ;

const char *VM_SymbolForCompiledPointer( vm_t *vm, void *code ) {
 int i;

 if ( code < (void *)vm->codeBase ) {
  return "Before code block";
 }
 if ( code >= (void *)(vm->codeBase + vm->codeLength) ) {
  return "After code block";
 }


 for ( i = 0 ; i < vm->codeLength ; i++ ) {
  if ( (void *)vm->instructionPointers[i] > code ) {
   break;
  }
 }
 i--;


 return VM_ValueToSymbol( vm, i );
}
