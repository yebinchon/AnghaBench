
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int modificationCount; scalar_t__* string; } ;


 scalar_t__ Q_stricmp (scalar_t__*,char*) ;
 TYPE_1__ g_password ;
 int trap_Cvar_Set (char*,char*) ;

void CheckCvars( void ) {
 static int lastMod = -1;

 if ( g_password.modificationCount != lastMod ) {
  lastMod = g_password.modificationCount;
  if ( *g_password.string && Q_stricmp( g_password.string, "none" ) ) {
   trap_Cvar_Set( "g_needpass", "1" );
  } else {
   trap_Cvar_Set( "g_needpass", "0" );
  }
 }
}
