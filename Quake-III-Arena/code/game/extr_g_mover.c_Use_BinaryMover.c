
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int trDuration; int trTime; } ;
struct TYPE_12__ {TYPE_1__ pos; int loopSound; } ;
struct TYPE_13__ {int flags; scalar_t__ moverState; int nextthink; int wait; scalar_t__ sound2to1; TYPE_2__ s; scalar_t__ sound1to2; struct TYPE_13__* teammaster; int soundLoop; struct TYPE_13__* activator; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_14__ {int time; } ;


 int EV_GENERAL_SOUND ;
 int FL_TEAMSLAVE ;
 int G_AddEvent (TYPE_3__*,int ,scalar_t__) ;
 scalar_t__ MOVER_1TO2 ;
 scalar_t__ MOVER_2TO1 ;
 scalar_t__ MOVER_POS1 ;
 scalar_t__ MOVER_POS2 ;
 int MatchTeam (TYPE_3__*,scalar_t__,int) ;
 TYPE_5__ level ;
 int qtrue ;
 int trap_AdjustAreaPortalState (TYPE_3__*,int ) ;

void Use_BinaryMover( gentity_t *ent, gentity_t *other, gentity_t *activator ) {
 int total;
 int partial;


 if ( ent->flags & FL_TEAMSLAVE ) {
  Use_BinaryMover( ent->teammaster, other, activator );
  return;
 }

 ent->activator = activator;

 if ( ent->moverState == MOVER_POS1 ) {


  MatchTeam( ent, MOVER_1TO2, level.time + 50 );


  if ( ent->sound1to2 ) {
   G_AddEvent( ent, EV_GENERAL_SOUND, ent->sound1to2 );
  }


  ent->s.loopSound = ent->soundLoop;


  if ( ent->teammaster == ent || !ent->teammaster ) {
   trap_AdjustAreaPortalState( ent, qtrue );
  }
  return;
 }


 if ( ent->moverState == MOVER_POS2 ) {
  ent->nextthink = level.time + ent->wait;
  return;
 }


 if ( ent->moverState == MOVER_2TO1 ) {
  total = ent->s.pos.trDuration;
  partial = level.time - ent->s.pos.trTime;
  if ( partial > total ) {
   partial = total;
  }

  MatchTeam( ent, MOVER_1TO2, level.time - ( total - partial ) );

  if ( ent->sound1to2 ) {
   G_AddEvent( ent, EV_GENERAL_SOUND, ent->sound1to2 );
  }
  return;
 }


 if ( ent->moverState == MOVER_1TO2 ) {
  total = ent->s.pos.trDuration;
  partial = level.time - ent->s.pos.trTime;
  if ( partial > total ) {
   partial = total;
  }

  MatchTeam( ent, MOVER_2TO1, level.time - ( total - partial ) );

  if ( ent->sound2to1 ) {
   G_AddEvent( ent, EV_GENERAL_SOUND, ent->sound2to1 );
  }
  return;
 }
}
