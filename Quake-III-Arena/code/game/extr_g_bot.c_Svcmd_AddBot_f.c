
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int team ;
typedef int string ;
typedef int name ;
typedef int altname ;
struct TYPE_2__ {int time; int startTime; } ;


 int G_AddBot (char*,float,char*,int,char*) ;
 int MAX_TOKEN_CHARS ;
 float atof (char*) ;
 int atoi (char*) ;
 TYPE_1__ level ;
 int trap_Argv (int,char*,int) ;
 scalar_t__ trap_Cvar_VariableIntegerValue (char*) ;
 int trap_Printf (char*) ;
 int trap_SendServerCommand (int,char*) ;

void Svcmd_AddBot_f( void ) {
 float skill;
 int delay;
 char name[MAX_TOKEN_CHARS];
 char altname[MAX_TOKEN_CHARS];
 char string[MAX_TOKEN_CHARS];
 char team[MAX_TOKEN_CHARS];


 if ( !trap_Cvar_VariableIntegerValue( "bot_enable" ) ) {
  return;
 }


 trap_Argv( 1, name, sizeof( name ) );
 if ( !name[0] ) {
  trap_Printf( "Usage: Addbot <botname> [skill 1-5] [team] [msec delay] [altname]\n" );
  return;
 }


 trap_Argv( 2, string, sizeof( string ) );
 if ( !string[0] ) {
  skill = 4;
 }
 else {
  skill = atof( string );
 }


 trap_Argv( 3, team, sizeof( team ) );


 trap_Argv( 4, string, sizeof( string ) );
 if ( !string[0] ) {
  delay = 0;
 }
 else {
  delay = atoi( string );
 }


 trap_Argv( 5, altname, sizeof( altname ) );

 G_AddBot( name, skill, team, delay, altname );



 if ( level.time - level.startTime > 1000 &&
  trap_Cvar_VariableIntegerValue( "cl_running" ) ) {
  trap_SendServerCommand( -1, "loaddefered\n" );
 }
}
