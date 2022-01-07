
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_USER_CREATED ;
 char* Cmd_Argv (int) ;
 int Cmd_TokenizeString (int ) ;
 TYPE_1__* Cvar_Get (char*,char*,int ) ;
 int Cvar_Set (char*,char*) ;
 int * com_consoleLines ;
 int com_numConsoleLines ;
 scalar_t__ strcmp (char*,char const*) ;

void Com_StartupVariable( const char *match ) {
 int i;
 char *s;
 cvar_t *cv;

 for (i=0 ; i < com_numConsoleLines ; i++) {
  Cmd_TokenizeString( com_consoleLines[i] );
  if ( strcmp( Cmd_Argv(0), "set" ) ) {
   continue;
  }

  s = Cmd_Argv(1);
  if ( !match || !strcmp( s, match ) ) {
   Cvar_Set( s, Cmd_Argv(2) );
   cv = Cvar_Get( s, "", 0 );
   cv->flags |= CVAR_USER_CREATED;

  }
 }
}
