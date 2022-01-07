
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ team; void* deferred; int infoValid; int skinName; int modelName; } ;
typedef TYPE_1__ clientInfo_t ;
struct TYPE_8__ {int maxclients; scalar_t__ gametype; TYPE_1__* clientinfo; } ;


 int CG_CopyClientInfoModel (TYPE_1__*,TYPE_1__*) ;
 int CG_LoadClientInfo (TYPE_1__*) ;
 int CG_Printf (char*) ;
 scalar_t__ GT_TEAM ;
 scalar_t__ Q_stricmp (int ,int ) ;
 TYPE_2__ cgs ;
 void* qtrue ;

__attribute__((used)) static void CG_SetDeferredClientInfo( clientInfo_t *ci ) {
 int i;
 clientInfo_t *match;



 for ( i = 0 ; i < cgs.maxclients ; i++ ) {
  match = &cgs.clientinfo[ i ];
  if ( !match->infoValid || match->deferred ) {
   continue;
  }
  if ( Q_stricmp( ci->skinName, match->skinName ) ||
    Q_stricmp( ci->modelName, match->modelName ) ||


    (cgs.gametype >= GT_TEAM && ci->team != match->team) ) {
   continue;
  }

  CG_LoadClientInfo( ci );
  return;
 }


 if ( cgs.gametype >= GT_TEAM ) {
  for ( i = 0 ; i < cgs.maxclients ; i++ ) {
   match = &cgs.clientinfo[ i ];
   if ( !match->infoValid || match->deferred ) {
    continue;
   }
   if ( Q_stricmp( ci->skinName, match->skinName ) ||
    (cgs.gametype >= GT_TEAM && ci->team != match->team) ) {
    continue;
   }
   ci->deferred = qtrue;
   CG_CopyClientInfoModel( match, ci );
   return;
  }




  CG_LoadClientInfo( ci );
  return;
 }


 for ( i = 0 ; i < cgs.maxclients ; i++ ) {
  match = &cgs.clientinfo[ i ];
  if ( !match->infoValid ) {
   continue;
  }

  ci->deferred = qtrue;
  CG_CopyClientInfoModel( match, ci );
  return;
 }


 CG_Printf( "CG_SetDeferredClientInfo: no valid clients!\n" );

 CG_LoadClientInfo( ci );
}
