
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dataMask; int * instructionPointersLength; int * codeLength; scalar_t__ compiled; scalar_t__ dllHandle; int * name; } ;
typedef TYPE_1__ vm_t ;


 int Com_Printf (char*,...) ;
 int MAX_VM ;
 TYPE_1__* vmTable ;

void VM_VmInfo_f( void ) {
 vm_t *vm;
 int i;

 Com_Printf( "Registered virtual machines:\n" );
 for ( i = 0 ; i < MAX_VM ; i++ ) {
  vm = &vmTable[i];
  if ( !vm->name[0] ) {
   break;
  }
  Com_Printf( "%s : ", vm->name );
  if ( vm->dllHandle ) {
   Com_Printf( "native\n" );
   continue;
  }
  if ( vm->compiled ) {
   Com_Printf( "compiled on load\n" );
  } else {
   Com_Printf( "interpreted\n" );
  }
  Com_Printf( "    code length : %7i\n", vm->codeLength );
  Com_Printf( "    table length: %7i\n", vm->instructionPointersLength );
  Com_Printf( "    data length : %7i\n", vm->dataMask + 1 );
 }
}
