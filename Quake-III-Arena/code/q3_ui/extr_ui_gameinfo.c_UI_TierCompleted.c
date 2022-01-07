
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARENAS_PER_TIER ;
 int Info_ValueForKey (char const*,char*) ;
 int UI_GetBestScore (int,int*,int*) ;
 int UI_GetNumSPTiers () ;
 char* UI_GetSpecialArenaInfo (char*) ;
 int atoi (int ) ;

int UI_TierCompleted( int levelWon ) {
 int level;
 int n;
 int tier;
 int score;
 int skill;
 const char *info;

 tier = levelWon / ARENAS_PER_TIER;
 level = tier * ARENAS_PER_TIER;

 if( tier == UI_GetNumSPTiers() ) {
  info = UI_GetSpecialArenaInfo( "training" );
  if( levelWon == atoi( Info_ValueForKey( info, "num" ) ) ) {
   return 0;
  }
  info = UI_GetSpecialArenaInfo( "final" );
  if( !info || levelWon == atoi( Info_ValueForKey( info, "num" ) ) ) {
   return tier + 1;
  }
  return -1;
 }

 for( n = 0; n < ARENAS_PER_TIER; n++, level++ ) {
  UI_GetBestScore( level, &score, &skill );
  if ( score != 1 ) {
   return -1;
  }
 }
 return tier + 1;
}
