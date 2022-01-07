
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ eType; int eFlags; int event; int pos; int otherEntityNum; int number; } ;
struct TYPE_10__ {int previousEvent; int lerpOrigin; TYPE_1__ currentState; } ;
typedef TYPE_3__ centity_t ;
struct TYPE_11__ {TYPE_2__* snap; } ;
struct TYPE_9__ {int serverTime; } ;


 int BG_EvaluateTrajectory (int *,int ,int ) ;
 int CG_EntityEvent (TYPE_3__*,int ) ;
 int CG_SetEntitySoundPosition (TYPE_3__*) ;
 int EF_PLAYER_EVENT ;
 scalar_t__ ET_EVENTS ;
 int EV_EVENT_BITS ;
 TYPE_4__ cg ;

void CG_CheckEvents( centity_t *cent ) {

 if ( cent->currentState.eType > ET_EVENTS ) {
  if ( cent->previousEvent ) {
   return;
  }

  if ( cent->currentState.eFlags & EF_PLAYER_EVENT ) {
   cent->currentState.number = cent->currentState.otherEntityNum;
  }

  cent->previousEvent = 1;

  cent->currentState.event = cent->currentState.eType - ET_EVENTS;
 } else {

  if ( cent->currentState.event == cent->previousEvent ) {
   return;
  }
  cent->previousEvent = cent->currentState.event;
  if ( ( cent->currentState.event & ~EV_EVENT_BITS ) == 0 ) {
   return;
  }
 }


 BG_EvaluateTrajectory( &cent->currentState.pos, cg.snap->serverTime, cent->lerpOrigin );
 CG_SetEntitySoundPosition( cent );

 CG_EntityEvent( cent, cent->lerpOrigin );
}
