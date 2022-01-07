
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int loopSound; } ;
struct TYPE_11__ {scalar_t__ moverState; struct TYPE_11__* teammaster; scalar_t__ soundPos1; struct TYPE_11__* activator; scalar_t__ wait; scalar_t__ nextthink; int think; scalar_t__ soundPos2; int soundLoop; TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_12__ {scalar_t__ time; } ;


 int EV_GENERAL_SOUND ;
 int G_AddEvent (TYPE_2__*,int ,scalar_t__) ;
 int G_Error (char*) ;
 int G_UseTargets (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ MOVER_1TO2 ;
 scalar_t__ MOVER_2TO1 ;
 int MOVER_POS1 ;
 int MOVER_POS2 ;
 int ReturnToPos1 ;
 int SetMoverState (TYPE_2__*,int ,scalar_t__) ;
 TYPE_4__ level ;
 int qfalse ;
 int trap_AdjustAreaPortalState (TYPE_2__*,int ) ;

void Reached_BinaryMover( gentity_t *ent ) {


 ent->s.loopSound = ent->soundLoop;

 if ( ent->moverState == MOVER_1TO2 ) {

  SetMoverState( ent, MOVER_POS2, level.time );


  if ( ent->soundPos2 ) {
   G_AddEvent( ent, EV_GENERAL_SOUND, ent->soundPos2 );
  }


  ent->think = ReturnToPos1;
  ent->nextthink = level.time + ent->wait;


  if ( !ent->activator ) {
   ent->activator = ent;
  }
  G_UseTargets( ent, ent->activator );
 } else if ( ent->moverState == MOVER_2TO1 ) {

  SetMoverState( ent, MOVER_POS1, level.time );


  if ( ent->soundPos1 ) {
   G_AddEvent( ent, EV_GENERAL_SOUND, ent->soundPos1 );
  }


  if ( ent->teammaster == ent || !ent->teammaster ) {
   trap_AdjustAreaPortalState( ent, qfalse );
  }
 } else {
  G_Error( "Reached_BinaryMover: bad moverState" );
 }
}
