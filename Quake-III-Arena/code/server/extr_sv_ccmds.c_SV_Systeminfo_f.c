
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVAR_SYSTEMINFO ;
 int Com_Printf (char*) ;
 int Cvar_InfoString (int ) ;
 int Info_Print (int ) ;

__attribute__((used)) static void SV_Systeminfo_f( void ) {
 Com_Printf ("System info settings:\n");
 Info_Print ( Cvar_InfoString( CVAR_SYSTEMINFO ) );
}
