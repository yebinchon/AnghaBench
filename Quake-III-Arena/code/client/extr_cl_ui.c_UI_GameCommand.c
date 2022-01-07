
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int realtime; } ;


 int UI_CONSOLE_COMMAND ;
 int VM_Call (int ,int ,int ) ;
 TYPE_1__ cls ;
 int qfalse ;
 int uivm ;

qboolean UI_GameCommand( void ) {
 if ( !uivm ) {
  return qfalse;
 }

 return VM_Call( uivm, UI_CONSOLE_COMMAND, cls.realtime );
}
