
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_9__ {scalar_t__ pm_type; scalar_t__* stats; int externalEvent; int entityEventSequence; int eventSequence; int* events; int generic1; int loopSound; scalar_t__* powerups; int groundEntityNum; int weapon; int * eventParms; int externalEventParm; int eFlags; int clientNum; int torsoAnim; int legsAnim; int movementDir; int viewangles; int velocity; int origin; } ;
typedef TYPE_3__ playerState_t ;
struct TYPE_8__ {int trBase; int trType; } ;
struct TYPE_7__ {int trTime; int trDuration; int trDelta; int trBase; int trType; } ;
struct TYPE_10__ {int event; int powerups; int generic1; int loopSound; int groundEntityNum; int weapon; int eventParm; int eFlags; int clientNum; int torsoAnim; int legsAnim; int * angles2; TYPE_2__ apos; TYPE_1__ pos; int number; void* eType; } ;
typedef TYPE_4__ entityState_t ;


 int EF_DEAD ;
 void* ET_INVISIBLE ;
 void* ET_PLAYER ;
 scalar_t__ GIB_HEALTH ;
 int MAX_POWERUPS ;
 int MAX_PS_EVENTS ;
 scalar_t__ PM_INTERMISSION ;
 scalar_t__ PM_SPECTATOR ;
 size_t STAT_HEALTH ;
 int SnapVector (int ) ;
 int TR_INTERPOLATE ;
 int TR_LINEAR_STOP ;
 int VectorCopy (int ,int ) ;
 size_t YAW ;

void BG_PlayerStateToEntityStateExtraPolate( playerState_t *ps, entityState_t *s, int time, qboolean snap ) {
 int i;

 if ( ps->pm_type == PM_INTERMISSION || ps->pm_type == PM_SPECTATOR ) {
  s->eType = ET_INVISIBLE;
 } else if ( ps->stats[STAT_HEALTH] <= GIB_HEALTH ) {
  s->eType = ET_INVISIBLE;
 } else {
  s->eType = ET_PLAYER;
 }

 s->number = ps->clientNum;

 s->pos.trType = TR_LINEAR_STOP;
 VectorCopy( ps->origin, s->pos.trBase );
 if ( snap ) {
  SnapVector( s->pos.trBase );
 }

 VectorCopy( ps->velocity, s->pos.trDelta );

 s->pos.trTime = time;

 s->pos.trDuration = 50;

 s->apos.trType = TR_INTERPOLATE;
 VectorCopy( ps->viewangles, s->apos.trBase );
 if ( snap ) {
  SnapVector( s->apos.trBase );
 }

 s->angles2[YAW] = ps->movementDir;
 s->legsAnim = ps->legsAnim;
 s->torsoAnim = ps->torsoAnim;
 s->clientNum = ps->clientNum;

 s->eFlags = ps->eFlags;
 if ( ps->stats[STAT_HEALTH] <= 0 ) {
  s->eFlags |= EF_DEAD;
 } else {
  s->eFlags &= ~EF_DEAD;
 }

 if ( ps->externalEvent ) {
  s->event = ps->externalEvent;
  s->eventParm = ps->externalEventParm;
 } else if ( ps->entityEventSequence < ps->eventSequence ) {
  int seq;

  if ( ps->entityEventSequence < ps->eventSequence - MAX_PS_EVENTS) {
   ps->entityEventSequence = ps->eventSequence - MAX_PS_EVENTS;
  }
  seq = ps->entityEventSequence & (MAX_PS_EVENTS-1);
  s->event = ps->events[ seq ] | ( ( ps->entityEventSequence & 3 ) << 8 );
  s->eventParm = ps->eventParms[ seq ];
  ps->entityEventSequence++;
 }

 s->weapon = ps->weapon;
 s->groundEntityNum = ps->groundEntityNum;

 s->powerups = 0;
 for ( i = 0 ; i < MAX_POWERUPS ; i++ ) {
  if ( ps->powerups[ i ] ) {
   s->powerups |= 1 << i;
  }
 }

 s->loopSound = ps->loopSound;
 s->generic1 = ps->generic1;
}
