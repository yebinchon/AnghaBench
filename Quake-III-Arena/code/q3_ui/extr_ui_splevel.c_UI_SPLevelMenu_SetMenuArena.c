
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int map ;
struct TYPE_6__ {char** levelNames; int* levelScores; TYPE_2__* item_maps; int * levelPicNames; int * levelScoresSkill; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ generic; scalar_t__ shader; } ;


 int ART_MAP_UNKNOWN ;
 char* Info_ValueForKey (char const*,char*) ;
 int MAX_QPATH ;
 int QMF_GRAYED ;
 int QMF_INACTIVE ;
 int Q_strncpyz (char*,char*,int) ;
 int Q_strupr (char*) ;
 int UI_GetBestScore (int,int*,int *) ;
 scalar_t__ currentSet ;
 TYPE_3__ levelMenuInfo ;
 scalar_t__ selectedArenaSet ;
 int strcpy (int ,int ) ;
 int trap_R_RegisterShaderNoMip (int ) ;
 int va (char*,char*) ;

__attribute__((used)) static void UI_SPLevelMenu_SetMenuArena( int n, int level, const char *arenaInfo ) {
 char map[MAX_QPATH];

 Q_strncpyz( map, Info_ValueForKey( arenaInfo, "map" ), sizeof(map) );

 Q_strncpyz( levelMenuInfo.levelNames[n], map, sizeof(levelMenuInfo.levelNames[n]) );
 Q_strupr( levelMenuInfo.levelNames[n] );

 UI_GetBestScore( level, &levelMenuInfo.levelScores[n], &levelMenuInfo.levelScoresSkill[n] );
 if( levelMenuInfo.levelScores[n] > 8 ) {
  levelMenuInfo.levelScores[n] = 8;
 }

 strcpy( levelMenuInfo.levelPicNames[n], va( "levelshots/%s.tga", map ) );
 if( !trap_R_RegisterShaderNoMip( levelMenuInfo.levelPicNames[n] ) ) {
  strcpy( levelMenuInfo.levelPicNames[n], ART_MAP_UNKNOWN );
 }
 levelMenuInfo.item_maps[n].shader = 0;
 if ( selectedArenaSet > currentSet ) {
  levelMenuInfo.item_maps[n].generic.flags |= QMF_GRAYED;
 }
 else {
  levelMenuInfo.item_maps[n].generic.flags &= ~QMF_GRAYED;
 }

 levelMenuInfo.item_maps[n].generic.flags &= ~QMF_INACTIVE;
}
