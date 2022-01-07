
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int CG_CONSOLE_COMMAND ;
 int VM_Call (int ,int ) ;
 int cgvm ;
 int qfalse ;

qboolean CL_GameCommand( void ) {
 if ( !cgvm ) {
  return qfalse;
 }

 return VM_Call( cgvm, CG_CONSOLE_COMMAND );
}
