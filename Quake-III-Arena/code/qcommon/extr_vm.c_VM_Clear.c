
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_t ;
struct TYPE_3__ {scalar_t__ dllHandle; } ;


 int Com_Memset (TYPE_1__*,int ,int) ;
 int MAX_VM ;
 int Sys_UnloadDll (scalar_t__) ;
 int * currentVM ;
 int * lastVM ;
 TYPE_1__* vmTable ;

void VM_Clear(void) {
 int i;
 for (i=0;i<MAX_VM; i++) {
  if ( vmTable[i].dllHandle ) {
   Sys_UnloadDll( vmTable[i].dllHandle );
  }
  Com_Memset( &vmTable[i], 0, sizeof( vm_t ) );
 }
 currentVM = ((void*)0);
 lastVM = ((void*)0);
}
