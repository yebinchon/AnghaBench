
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_14__ {size_t ownerNum; int currentOrigin; } ;
struct TYPE_12__ {int eType; int pos; } ;
struct TYPE_15__ {TYPE_3__ r; int splashMethodOfDeath; int splashRadius; scalar_t__ splashDamage; int parent; int freeAfterEvent; TYPE_1__ s; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_17__ {TYPE_2__* client; } ;
struct TYPE_16__ {int time; } ;
struct TYPE_13__ {int accuracy_hits; } ;


 int BG_EvaluateTrajectory (int *,int ,int*) ;
 int DirToByte (int*) ;
 int ET_GENERAL ;
 int EV_MISSILE_MISS ;
 int G_AddEvent (TYPE_4__*,int ,int ) ;
 scalar_t__ G_RadiusDamage (int ,int ,scalar_t__,int ,TYPE_4__*,int ) ;
 int G_SetOrigin (TYPE_4__*,int*) ;
 int SnapVector (int*) ;
 TYPE_7__* g_entities ;
 TYPE_6__ level ;
 int qtrue ;
 int trap_LinkEntity (TYPE_4__*) ;

void G_ExplodeMissile( gentity_t *ent ) {
 vec3_t dir;
 vec3_t origin;

 BG_EvaluateTrajectory( &ent->s.pos, level.time, origin );
 SnapVector( origin );
 G_SetOrigin( ent, origin );


 dir[0] = dir[1] = 0;
 dir[2] = 1;

 ent->s.eType = ET_GENERAL;
 G_AddEvent( ent, EV_MISSILE_MISS, DirToByte( dir ) );

 ent->freeAfterEvent = qtrue;


 if ( ent->splashDamage ) {
  if( G_RadiusDamage( ent->r.currentOrigin, ent->parent, ent->splashDamage, ent->splashRadius, ent
   , ent->splashMethodOfDeath ) ) {
   g_entities[ent->r.ownerNum].client->accuracy_hits++;
  }
 }

 trap_LinkEntity( ent );
}
