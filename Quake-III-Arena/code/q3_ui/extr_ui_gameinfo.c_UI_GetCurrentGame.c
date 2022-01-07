
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Info_ValueForKey (char const*,char*) ;
 int UI_GetBestScore (int,int*,int*) ;
 char* UI_GetSpecialArenaInfo (char*) ;
 int atoi (int ) ;
 int ui_numSinglePlayerArenas ;

int UI_GetCurrentGame( void ) {
 int level;
 int rank;
 int skill;
 const char *info;

 info = UI_GetSpecialArenaInfo( "training" );
 if( info ) {
  level = atoi( Info_ValueForKey( info, "num" ) );
  UI_GetBestScore( level, &rank, &skill );
  if ( !rank || rank > 1 ) {
   return level;
  }
 }

 for( level = 0; level < ui_numSinglePlayerArenas; level++ ) {
  UI_GetBestScore( level, &rank, &skill );
  if ( !rank || rank > 1 ) {
   return level;
  }
 }

 info = UI_GetSpecialArenaInfo( "final" );
 if( !info ) {
  return -1;
 }
 return atoi( Info_ValueForKey( info, "num" ) );
}
