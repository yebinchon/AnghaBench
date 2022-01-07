
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ eType; scalar_t__ event; } ;
struct TYPE_19__ {int linked; } ;
struct TYPE_21__ {scalar_t__ eventTime; int classname; scalar_t__ inuse; TYPE_4__ s; scalar_t__ physicsObject; scalar_t__ neverFree; TYPE_3__ r; scalar_t__ freeAfterEvent; scalar_t__ unlinkAfterEvent; TYPE_2__* client; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_23__ {scalar_t__ integer; } ;
struct TYPE_22__ {int previousTime; int time; int num_entities; int maxclients; int framenum; scalar_t__ restarted; } ;
struct TYPE_17__ {scalar_t__ externalEvent; } ;
struct TYPE_18__ {TYPE_1__ ps; } ;


 int CheckCvars () ;
 int CheckExitRules () ;
 int CheckTeamStatus () ;
 int CheckTeamVote (int ) ;
 int CheckTournament () ;
 int CheckVote () ;
 int ClientEndFrame (TYPE_5__*) ;
 scalar_t__ ET_ITEM ;
 scalar_t__ ET_MISSILE ;
 scalar_t__ ET_MOVER ;
 scalar_t__ EVENT_VALID_MSEC ;
 int G_FreeEntity (TYPE_5__*) ;
 int G_Printf (char*,int,int ) ;
 int G_RunClient (TYPE_5__*) ;
 int G_RunItem (TYPE_5__*) ;
 int G_RunMissile (TYPE_5__*) ;
 int G_RunMover (TYPE_5__*) ;
 int G_RunThink (TYPE_5__*) ;
 int G_UpdateCvars () ;
 int MAX_CLIENTS ;
 int MAX_GENTITIES ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 TYPE_5__* g_entities ;
 TYPE_8__ g_listEntity ;
 TYPE_7__ level ;
 scalar_t__ qfalse ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Milliseconds () ;
 int trap_UnlinkEntity (TYPE_5__*) ;

void G_RunFrame( int levelTime ) {
 int i;
 gentity_t *ent;
 int msec;
int start, end;


 if ( level.restarted ) {
  return;
 }

 level.framenum++;
 level.previousTime = level.time;
 level.time = levelTime;
 msec = level.time - level.previousTime;


 G_UpdateCvars();




 start = trap_Milliseconds();
 ent = &g_entities[0];
 for (i=0 ; i<level.num_entities ; i++, ent++) {
  if ( !ent->inuse ) {
   continue;
  }


  if ( level.time - ent->eventTime > EVENT_VALID_MSEC ) {
   if ( ent->s.event ) {
    ent->s.event = 0;
    if ( ent->client ) {
     ent->client->ps.externalEvent = 0;



    }
   }
   if ( ent->freeAfterEvent ) {

    G_FreeEntity( ent );
    continue;
   } else if ( ent->unlinkAfterEvent ) {

    ent->unlinkAfterEvent = qfalse;
    trap_UnlinkEntity( ent );
   }
  }


  if ( ent->freeAfterEvent ) {
   continue;
  }

  if ( !ent->r.linked && ent->neverFree ) {
   continue;
  }

  if ( ent->s.eType == ET_MISSILE ) {
   G_RunMissile( ent );
   continue;
  }

  if ( ent->s.eType == ET_ITEM || ent->physicsObject ) {
   G_RunItem( ent );
   continue;
  }

  if ( ent->s.eType == ET_MOVER ) {
   G_RunMover( ent );
   continue;
  }

  if ( i < MAX_CLIENTS ) {
   G_RunClient( ent );
   continue;
  }

  G_RunThink( ent );
 }
end = trap_Milliseconds();

start = trap_Milliseconds();

 ent = &g_entities[0];
 for (i=0 ; i < level.maxclients ; i++, ent++ ) {
  if ( ent->inuse ) {
   ClientEndFrame( ent );
  }
 }
end = trap_Milliseconds();


 CheckTournament();


 CheckExitRules();


 CheckTeamStatus();


 CheckVote();


 CheckTeamVote( TEAM_RED );
 CheckTeamVote( TEAM_BLUE );


 CheckCvars();

 if (g_listEntity.integer) {
  for (i = 0; i < MAX_GENTITIES; i++) {
   G_Printf("%4i: %s\n", i, g_entities[i].classname);
  }
  trap_Cvar_Set("g_listEntity", "0");
 }
}
