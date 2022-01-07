
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_11__ {int currentOrigin; int ownerNum; int svFlags; } ;
struct TYPE_9__ {int trDelta; int trBase; scalar_t__ trTime; int trType; } ;
struct TYPE_10__ {TYPE_1__ pos; int number; int weapon; int eType; } ;
struct TYPE_12__ {char* classname; int damage; int splashDamage; int splashRadius; TYPE_3__ r; TYPE_2__ s; int * target_ent; int clipmask; int splashMethodOfDeath; int methodOfDeath; struct TYPE_12__* parent; int think; scalar_t__ nextthink; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_13__ {scalar_t__ time; } ;


 int ET_MISSILE ;
 int G_ExplodeMissile ;
 TYPE_4__* G_Spawn () ;
 int MASK_SHOT ;
 scalar_t__ MISSILE_PRESTEP_TIME ;
 int MOD_ROCKET ;
 int MOD_ROCKET_SPLASH ;
 int SVF_USE_CURRENT_ORIGIN ;
 int SnapVector (int ) ;
 int TR_LINEAR ;
 int VectorCopy (int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorScale (int ,int,int ) ;
 int WP_ROCKET_LAUNCHER ;
 TYPE_5__ level ;

gentity_t *fire_rocket (gentity_t *self, vec3_t start, vec3_t dir) {
 gentity_t *bolt;

 VectorNormalize (dir);

 bolt = G_Spawn();
 bolt->classname = "rocket";
 bolt->nextthink = level.time + 15000;
 bolt->think = G_ExplodeMissile;
 bolt->s.eType = ET_MISSILE;
 bolt->r.svFlags = SVF_USE_CURRENT_ORIGIN;
 bolt->s.weapon = WP_ROCKET_LAUNCHER;
 bolt->r.ownerNum = self->s.number;
 bolt->parent = self;
 bolt->damage = 100;
 bolt->splashDamage = 100;
 bolt->splashRadius = 120;
 bolt->methodOfDeath = MOD_ROCKET;
 bolt->splashMethodOfDeath = MOD_ROCKET_SPLASH;
 bolt->clipmask = MASK_SHOT;
 bolt->target_ent = ((void*)0);

 bolt->s.pos.trType = TR_LINEAR;
 bolt->s.pos.trTime = level.time - MISSILE_PRESTEP_TIME;
 VectorCopy( start, bolt->s.pos.trBase );
 VectorScale( dir, 900, bolt->s.pos.trDelta );
 SnapVector( bolt->s.pos.trDelta );
 VectorCopy (start, bolt->r.currentOrigin);

 return bolt;
}
