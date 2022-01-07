
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int s ;
struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {int newSession; } ;


 int G_Printf (char*) ;
 int MAX_STRING_CHARS ;
 int atoi (char*) ;
 TYPE_2__ g_gametype ;
 TYPE_1__ level ;
 int qtrue ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;

void G_InitWorldSession( void ) {
 char s[MAX_STRING_CHARS];
 int gt;

 trap_Cvar_VariableStringBuffer( "session", s, sizeof(s) );
 gt = atoi( s );



 if ( g_gametype.integer != gt ) {
  level.newSession = qtrue;
  G_Printf( "Gametype changed, clearing session data.\n" );
 }
}
