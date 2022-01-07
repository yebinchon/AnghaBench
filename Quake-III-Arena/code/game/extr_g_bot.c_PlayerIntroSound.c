
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int model ;


 int EXEC_APPEND ;
 int MAX_QPATH ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int Q_strncpyz (char*,char const*,int) ;
 char* Q_strrchr (char*,char) ;
 int trap_SendConsoleCommand (int ,int ) ;
 int va (char*,char*) ;

__attribute__((used)) static void PlayerIntroSound( const char *modelAndSkin ) {
 char model[MAX_QPATH];
 char *skin;

 Q_strncpyz( model, modelAndSkin, sizeof(model) );
 skin = Q_strrchr( model, '/' );
 if ( skin ) {
  *skin++ = '\0';
 }
 else {
  skin = model;
 }

 if( Q_stricmp( skin, "default" ) == 0 ) {
  skin = model;
 }

 trap_SendConsoleCommand( EXEC_APPEND, va( "play sound/player/announce/%s.wav\n", skin ) );
}
