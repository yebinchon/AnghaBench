
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVAR_SERVERINFO ;
 int Com_Printf (char*) ;
 int Cvar_InfoString (int ) ;
 int Info_Print (int ) ;

__attribute__((used)) static void SV_Serverinfo_f( void ) {
 Com_Printf ("Server info settings:\n");
 Info_Print ( Cvar_InfoString( CVAR_SERVERINFO ) );
}
