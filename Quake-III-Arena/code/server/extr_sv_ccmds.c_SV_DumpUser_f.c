
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int userinfo; } ;
typedef TYPE_1__ client_t ;
struct TYPE_5__ {int integer; } ;


 int Cmd_Argc () ;
 int Com_Printf (char*) ;
 int Info_Print (int ) ;
 TYPE_1__* SV_GetPlayerByName () ;
 TYPE_2__* com_sv_running ;

__attribute__((used)) static void SV_DumpUser_f( void ) {
 client_t *cl;


 if ( !com_sv_running->integer ) {
  Com_Printf( "Server is not running.\n" );
  return;
 }

 if ( Cmd_Argc() != 2 ) {
  Com_Printf ("Usage: info <userid>\n");
  return;
 }

 cl = SV_GetPlayerByName();
 if ( !cl ) {
  return;
 }

 Com_Printf( "userinfo\n" );
 Com_Printf( "--------\n" );
 Info_Print( cl->userinfo );
}
