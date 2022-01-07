
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int callLevel; } ;
typedef TYPE_1__ vm_t ;



char *VM_Indent( vm_t *vm ) {
 static char *string = "                                        ";
 if ( vm->callLevel > 20 ) {
  return string;
 }
 return string + 2 * ( 20 - vm->callLevel );
}
