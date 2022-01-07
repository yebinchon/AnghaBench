
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int servername; } ;


 int Cbuf_AddText (int ) ;
 int Com_Printf (char*) ;
 int Cvar_Set (char*,char*) ;
 TYPE_1__ cls ;
 int strcmp (int ,char*) ;
 int strlen (int ) ;
 int va (char*,int ) ;

void CL_Reconnect_f( void ) {
 if ( !strlen( cls.servername ) || !strcmp( cls.servername, "localhost" ) ) {
  Com_Printf( "Can't reconnect to localhost.\n" );
  return;
 }
 Cvar_Set("ui_singlePlayerActive", "0");
 Cbuf_AddText( va("connect %s\n", cls.servername ) );
}
