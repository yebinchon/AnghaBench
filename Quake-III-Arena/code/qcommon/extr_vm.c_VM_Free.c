
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ instructionPointers; scalar_t__ dataBase; scalar_t__ codeBase; scalar_t__ dllHandle; } ;
typedef TYPE_1__ vm_t ;


 int Com_Memset (TYPE_1__*,int ,int) ;
 int Sys_UnloadDll (scalar_t__) ;
 int Z_Free (scalar_t__) ;
 int * currentVM ;
 int * lastVM ;

void VM_Free( vm_t *vm ) {

 if ( vm->dllHandle ) {
  Sys_UnloadDll( vm->dllHandle );
  Com_Memset( vm, 0, sizeof( *vm ) );
 }
 Com_Memset( vm, 0, sizeof( *vm ) );

 currentVM = ((void*)0);
 lastVM = ((void*)0);
}
