
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dataMask; scalar_t__ dataBase; scalar_t__ entryPoint; } ;
typedef TYPE_1__ vm_t ;


 int * currentVM ;

void *VM_ExplicitArgPtr( vm_t *vm, int intValue ) {
 if ( !intValue ) {
  return ((void*)0);
 }


 if ( currentVM==((void*)0) )
   return ((void*)0);


 if ( vm->entryPoint ) {
  return (void *)(vm->dataBase + intValue);
 }
 else {
  return (void *)(vm->dataBase + (intValue & vm->dataMask));
 }
}
