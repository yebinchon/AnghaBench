
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int Menu_Cache () ;
 scalar_t__ Q_stricmp (char*,char*) ;
 char* UI_Argv (int ) ;
 int UI_CDKeyMenu_f () ;
 int UI_Cache_f () ;
 int UI_CinematicsMenu_f () ;
 int UI_SPLevelMenu_f () ;
 int UI_SPPostgameMenu_f () ;
 int UI_SPUnlockMedals_f () ;
 int UI_SPUnlock_f () ;
 int UI_TeamOrdersMenu_f () ;
 int qfalse ;
 int qtrue ;

qboolean UI_ConsoleCommand( int realTime ) {
 char *cmd;

 cmd = UI_Argv( 0 );


 Menu_Cache();

 if ( Q_stricmp (cmd, "levelselect") == 0 ) {
  UI_SPLevelMenu_f();
  return qtrue;
 }

 if ( Q_stricmp (cmd, "postgame") == 0 ) {
  UI_SPPostgameMenu_f();
  return qtrue;
 }

 if ( Q_stricmp (cmd, "ui_cache") == 0 ) {
  UI_Cache_f();
  return qtrue;
 }

 if ( Q_stricmp (cmd, "ui_cinematics") == 0 ) {
  UI_CinematicsMenu_f();
  return qtrue;
 }

 if ( Q_stricmp (cmd, "ui_teamOrders") == 0 ) {
  UI_TeamOrdersMenu_f();
  return qtrue;
 }

 if ( Q_stricmp (cmd, "iamacheater") == 0 ) {
  UI_SPUnlock_f();
  return qtrue;
 }

 if ( Q_stricmp (cmd, "iamamonkey") == 0 ) {
  UI_SPUnlockMedals_f();
  return qtrue;
 }

 if ( Q_stricmp (cmd, "ui_cdkey") == 0 ) {
  UI_CDKeyMenu_f();
  return qtrue;
 }

 return qfalse;
}
