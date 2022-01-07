
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
typedef int qboolean ;
struct TYPE_11__ {scalar_t__* absmin; scalar_t__* absmax; int currentOrigin; } ;
struct TYPE_12__ {TYPE_1__ r; int takedamage; } ;
typedef TYPE_2__ gentity_t ;


 scalar_t__ CanDamage (TYPE_2__*,scalar_t__*) ;
 int DAMAGE_RADIUS ;
 int G_Damage (TYPE_2__*,int *,TYPE_2__*,scalar_t__*,scalar_t__*,int,int ,int) ;
 scalar_t__ LogAccuracyHit (TYPE_2__*,TYPE_2__*) ;
 int MAX_GENTITIES ;
 float VectorLength (scalar_t__*) ;
 int VectorSubtract (int ,scalar_t__*,scalar_t__*) ;
 TYPE_2__* g_entities ;
 int qfalse ;
 int qtrue ;
 int trap_EntitiesInBox (scalar_t__*,scalar_t__*,int*,int) ;

qboolean G_RadiusDamage ( vec3_t origin, gentity_t *attacker, float damage, float radius,
      gentity_t *ignore, int mod) {
 float points, dist;
 gentity_t *ent;
 int entityList[MAX_GENTITIES];
 int numListedEntities;
 vec3_t mins, maxs;
 vec3_t v;
 vec3_t dir;
 int i, e;
 qboolean hitClient = qfalse;

 if ( radius < 1 ) {
  radius = 1;
 }

 for ( i = 0 ; i < 3 ; i++ ) {
  mins[i] = origin[i] - radius;
  maxs[i] = origin[i] + radius;
 }

 numListedEntities = trap_EntitiesInBox( mins, maxs, entityList, MAX_GENTITIES );

 for ( e = 0 ; e < numListedEntities ; e++ ) {
  ent = &g_entities[entityList[ e ]];

  if (ent == ignore)
   continue;
  if (!ent->takedamage)
   continue;


  for ( i = 0 ; i < 3 ; i++ ) {
   if ( origin[i] < ent->r.absmin[i] ) {
    v[i] = ent->r.absmin[i] - origin[i];
   } else if ( origin[i] > ent->r.absmax[i] ) {
    v[i] = origin[i] - ent->r.absmax[i];
   } else {
    v[i] = 0;
   }
  }

  dist = VectorLength( v );
  if ( dist >= radius ) {
   continue;
  }

  points = damage * ( 1.0 - dist / radius );

  if( CanDamage (ent, origin) ) {
   if( LogAccuracyHit( ent, attacker ) ) {
    hitClient = qtrue;
   }
   VectorSubtract (ent->r.currentOrigin, origin, dir);


   dir[2] += 24;
   G_Damage (ent, ((void*)0), attacker, dir, origin, (int)points, DAMAGE_RADIUS, mod);
  }
 }

 return hitClient;
}
