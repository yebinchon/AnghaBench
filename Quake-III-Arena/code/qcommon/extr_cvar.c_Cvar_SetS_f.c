
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_SERVERINFO ;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*) ;
 TYPE_1__* Cvar_FindVar (int ) ;
 int Cvar_Set_f () ;

void Cvar_SetS_f( void ) {
 cvar_t *v;

 if ( Cmd_Argc() != 3 ) {
  Com_Printf ("usage: sets <variable> <value>\n");
  return;
 }
 Cvar_Set_f();
 v = Cvar_FindVar( Cmd_Argv( 1 ) );
 if ( !v ) {
  return;
 }
 v->flags |= CVAR_SERVERINFO;
}
