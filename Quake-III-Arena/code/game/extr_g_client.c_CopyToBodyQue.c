
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int ownerNum; int currentOrigin; int contents; int absmax; int absmin; int maxs; int mins; int svFlags; } ;
struct TYPE_14__ {int trBase; int trType; int trDelta; scalar_t__ trTime; } ;
struct TYPE_15__ {int eFlags; int number; scalar_t__ groundEntityNum; int legsAnim; int torsoAnim; TYPE_3__ pos; scalar_t__ event; scalar_t__ loopSound; scalar_t__ powerups; int origin; } ;
struct TYPE_17__ {int clipmask; scalar_t__ health; TYPE_5__ r; TYPE_4__ s; void* takedamage; int die; int think; scalar_t__ nextthink; TYPE_2__* client; scalar_t__ physicsBounce; void* physicsObject; scalar_t__ timestamp; struct TYPE_17__* activator; int classname; int inuse; } ;
typedef TYPE_6__ gentity_t ;
struct TYPE_18__ {size_t bodyQueIndex; scalar_t__ time; TYPE_6__** bodyQue; } ;
struct TYPE_12__ {int velocity; } ;
struct TYPE_13__ {TYPE_1__ ps; } ;


 int ANIM_TOGGLEBIT ;
 int BODY_QUEUE_SIZE ;






 int BodySink ;
 int CONTENTS_CORPSE ;
 int CONTENTS_NODROP ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SOLID ;
 int EF_DEAD ;
 int EF_KAMIKAZE ;
 scalar_t__ ENTITYNUM_NONE ;
 scalar_t__ GIB_HEALTH ;
 int MAX_GENTITIES ;
 int TR_GRAVITY ;
 int TR_STATIONARY ;
 int VectorCopy (int ,int ) ;
 int body_die ;
 TYPE_6__* g_entities ;
 TYPE_9__ level ;
 void* qfalse ;
 void* qtrue ;
 scalar_t__ strcmp (int ,char*) ;
 int trap_LinkEntity (TYPE_6__*) ;
 int trap_PointContents (int ,int) ;
 int trap_UnlinkEntity (TYPE_6__*) ;

void CopyToBodyQue( gentity_t *ent ) {




 gentity_t *body;
 int contents;

 trap_UnlinkEntity (ent);


 contents = trap_PointContents( ent->s.origin, -1 );
 if ( contents & CONTENTS_NODROP ) {
  return;
 }


 body = level.bodyQue[ level.bodyQueIndex ];
 level.bodyQueIndex = (level.bodyQueIndex + 1) % BODY_QUEUE_SIZE;

 trap_UnlinkEntity (body);

 body->s = ent->s;
 body->s.eFlags = EF_DEAD;
 body->s.powerups = 0;
 body->s.loopSound = 0;
 body->s.number = body - g_entities;
 body->timestamp = level.time;
 body->physicsObject = qtrue;
 body->physicsBounce = 0;
 if ( body->s.groundEntityNum == ENTITYNUM_NONE ) {
  body->s.pos.trType = TR_GRAVITY;
  body->s.pos.trTime = level.time;
  VectorCopy( ent->client->ps.velocity, body->s.pos.trDelta );
 } else {
  body->s.pos.trType = TR_STATIONARY;
 }
 body->s.event = 0;



 switch ( body->s.legsAnim & ~ANIM_TOGGLEBIT ) {
 case 130:
 case 133:
  body->s.torsoAnim = body->s.legsAnim = 133;
  break;
 case 129:
 case 132:
  body->s.torsoAnim = body->s.legsAnim = 132;
  break;
 case 128:
 case 131:
 default:
  body->s.torsoAnim = body->s.legsAnim = 131;
  break;
 }

 body->r.svFlags = ent->r.svFlags;
 VectorCopy (ent->r.mins, body->r.mins);
 VectorCopy (ent->r.maxs, body->r.maxs);
 VectorCopy (ent->r.absmin, body->r.absmin);
 VectorCopy (ent->r.absmax, body->r.absmax);

 body->clipmask = CONTENTS_SOLID | CONTENTS_PLAYERCLIP;
 body->r.contents = CONTENTS_CORPSE;
 body->r.ownerNum = ent->s.number;

 body->nextthink = level.time + 5000;
 body->think = BodySink;

 body->die = body_die;


 if ( ent->health <= GIB_HEALTH ) {
  body->takedamage = qfalse;
 } else {
  body->takedamage = qtrue;
 }


 VectorCopy ( body->s.pos.trBase, body->r.currentOrigin );
 trap_LinkEntity (body);
}
