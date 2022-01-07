
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {scalar_t__ state; } ;


 int GAME_CONSOLE_COMMAND ;
 scalar_t__ SS_GAME ;
 int VM_Call (int ,int ) ;
 int gvm ;
 int qfalse ;
 TYPE_1__ sv ;

qboolean SV_GameCommand( void ) {
 if ( sv.state != SS_GAME ) {
  return qfalse;
 }

 return VM_Call( gvm, GAME_CONSOLE_COMMAND );
}
