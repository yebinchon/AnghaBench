
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
typedef int qboolean ;
struct TYPE_33__ {scalar_t__* origin; scalar_t__* angles; TYPE_8__* ent; int deltayaw; } ;
typedef TYPE_7__ pushed_t ;
struct TYPE_28__ {scalar_t__ trType; scalar_t__* trBase; } ;
struct TYPE_27__ {scalar_t__ trType; scalar_t__* trBase; } ;
struct TYPE_32__ {scalar_t__ eType; scalar_t__ groundEntityNum; scalar_t__ number; TYPE_2__ apos; TYPE_1__ pos; scalar_t__ loopSound; } ;
struct TYPE_31__ {scalar_t__* currentAngles; scalar_t__* currentOrigin; scalar_t__* absmin; scalar_t__* absmax; int maxs; int mins; } ;
struct TYPE_34__ {TYPE_4__* client; TYPE_6__ s; TYPE_5__ r; int physicsObject; int * activator; struct TYPE_34__* enemy; int classname; } ;
typedef TYPE_8__ gentity_t ;
struct TYPE_29__ {scalar_t__* origin; int * delta_angles; } ;
struct TYPE_30__ {TYPE_3__ ps; } ;


 scalar_t__ ET_ITEM ;
 scalar_t__ ET_MISSILE ;
 scalar_t__ ET_PLAYER ;
 int EV_PROXIMITY_MINE_TRIGGER ;
 int G_AddEvent (TYPE_8__*,int ,int ) ;
 int G_CheckProxMinePosition (TYPE_8__*) ;
 int G_Damage (TYPE_8__*,TYPE_8__*,TYPE_8__*,int *,int *,int,int ,int ) ;
 int G_ExplodeMissile (TYPE_8__*) ;
 int G_FreeEntity (int *) ;
 int G_TestEntityPosition (TYPE_8__*) ;
 scalar_t__ G_TryPushingEntity (TYPE_8__*,TYPE_8__*,scalar_t__*,scalar_t__*) ;
 int G_TryPushingProxMine (TYPE_8__*,TYPE_8__*,scalar_t__*,scalar_t__*) ;
 int MAX_GENTITIES ;
 int MOD_CRUSH ;
 float RadiusFromBounds (int ,int ) ;
 scalar_t__ TR_SINE ;
 int VectorAdd (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 size_t YAW ;
 TYPE_8__* g_entities ;
 TYPE_7__* pushed ;
 TYPE_7__* pushed_p ;
 int qfalse ;
 int qtrue ;
 int strcmp (int ,char*) ;
 int trap_EntitiesInBox (scalar_t__*,scalar_t__*,int*,int) ;
 int trap_LinkEntity (TYPE_8__*) ;
 int trap_UnlinkEntity (TYPE_8__*) ;

qboolean G_MoverPush( gentity_t *pusher, vec3_t move, vec3_t amove, gentity_t **obstacle ) {
 int i, e;
 gentity_t *check;
 vec3_t mins, maxs;
 pushed_t *p;
 int entityList[MAX_GENTITIES];
 int listedEntities;
 vec3_t totalMins, totalMaxs;

 *obstacle = ((void*)0);




 if ( pusher->r.currentAngles[0] || pusher->r.currentAngles[1] || pusher->r.currentAngles[2]
  || amove[0] || amove[1] || amove[2] ) {
  float radius;

  radius = RadiusFromBounds( pusher->r.mins, pusher->r.maxs );
  for ( i = 0 ; i < 3 ; i++ ) {
   mins[i] = pusher->r.currentOrigin[i] + move[i] - radius;
   maxs[i] = pusher->r.currentOrigin[i] + move[i] + radius;
   totalMins[i] = mins[i] - move[i];
   totalMaxs[i] = maxs[i] - move[i];
  }
 } else {
  for (i=0 ; i<3 ; i++) {
   mins[i] = pusher->r.absmin[i] + move[i];
   maxs[i] = pusher->r.absmax[i] + move[i];
  }

  VectorCopy( pusher->r.absmin, totalMins );
  VectorCopy( pusher->r.absmax, totalMaxs );
  for (i=0 ; i<3 ; i++) {
   if ( move[i] > 0 ) {
    totalMaxs[i] += move[i];
   } else {
    totalMins[i] += move[i];
   }
  }
 }


 trap_UnlinkEntity( pusher );

 listedEntities = trap_EntitiesInBox( totalMins, totalMaxs, entityList, MAX_GENTITIES );


 VectorAdd( pusher->r.currentOrigin, move, pusher->r.currentOrigin );
 VectorAdd( pusher->r.currentAngles, amove, pusher->r.currentAngles );
 trap_LinkEntity( pusher );


 for ( e = 0 ; e < listedEntities ; e++ ) {
  check = &g_entities[ entityList[ e ] ];
  if ( check->s.eType != ET_ITEM && check->s.eType != ET_PLAYER && !check->physicsObject ) {
   continue;
  }


  if ( check->s.groundEntityNum != pusher->s.number ) {

   if ( check->r.absmin[0] >= maxs[0]
   || check->r.absmin[1] >= maxs[1]
   || check->r.absmin[2] >= maxs[2]
   || check->r.absmax[0] <= mins[0]
   || check->r.absmax[1] <= mins[1]
   || check->r.absmax[2] <= mins[2] ) {
    continue;
   }


   if (!G_TestEntityPosition (check)) {
    continue;
   }
  }


  if ( G_TryPushingEntity( check, pusher, move, amove ) ) {
   continue;
  }




  if ( pusher->s.pos.trType == TR_SINE || pusher->s.apos.trType == TR_SINE ) {
   G_Damage( check, pusher, pusher, ((void*)0), ((void*)0), 99999, 0, MOD_CRUSH );
   continue;
  }



  *obstacle = check;




  for ( p=pushed_p-1 ; p>=pushed ; p-- ) {
   VectorCopy (p->origin, p->ent->s.pos.trBase);
   VectorCopy (p->angles, p->ent->s.apos.trBase);
   if ( p->ent->client ) {
    p->ent->client->ps.delta_angles[YAW] = p->deltayaw;
    VectorCopy (p->origin, p->ent->client->ps.origin);
   }
   trap_LinkEntity (p->ent);
  }
  return qfalse;
 }

 return qtrue;
}
