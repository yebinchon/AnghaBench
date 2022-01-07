
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_6__ {scalar_t__ team; scalar_t__ deferred; int redTeam; int blueTeam; int headSkinName; int headModelName; int skinName; int modelName; int infoValid; } ;
typedef TYPE_1__ clientInfo_t ;
struct TYPE_7__ {int maxclients; scalar_t__ gametype; TYPE_1__* clientinfo; } ;


 int CG_CopyClientInfoModel (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ GT_TEAM ;
 int Q_stricmp (int ,int ) ;
 TYPE_2__ cgs ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

__attribute__((used)) static qboolean CG_ScanForExistingClientInfo( clientInfo_t *ci ) {
 int i;
 clientInfo_t *match;

 for ( i = 0 ; i < cgs.maxclients ; i++ ) {
  match = &cgs.clientinfo[ i ];
  if ( !match->infoValid ) {
   continue;
  }
  if ( match->deferred ) {
   continue;
  }
  if ( !Q_stricmp( ci->modelName, match->modelName )
   && !Q_stricmp( ci->skinName, match->skinName )
   && !Q_stricmp( ci->headModelName, match->headModelName )
   && !Q_stricmp( ci->headSkinName, match->headSkinName )
   && !Q_stricmp( ci->blueTeam, match->blueTeam )
   && !Q_stricmp( ci->redTeam, match->redTeam )
   && (cgs.gametype < GT_TEAM || ci->team == match->team) ) {


   ci->deferred = qfalse;

   CG_CopyClientInfoModel( match, ci );

   return qtrue;
  }
 }


 return qfalse;
}
