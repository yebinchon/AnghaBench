
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_17__ {int normal; } ;
struct TYPE_20__ {int surfaceFlags; size_t entityNum; int endpos; TYPE_1__ plane; } ;
typedef TYPE_4__ trace_t ;
struct TYPE_19__ {int number; int eventParm; int otherEntityNum; } ;
struct TYPE_21__ {TYPE_3__ s; TYPE_2__* client; scalar_t__ takedamage; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_22__ {scalar_t__ time; } ;
struct TYPE_18__ {scalar_t__ invulnerabilityTime; int accuracy_hits; } ;


 int DirToByte (int ) ;
 int ENTITYNUM_NONE ;
 int EV_BULLET_HIT_FLESH ;
 int EV_BULLET_HIT_WALL ;
 int G_BounceProjectile (int ,int ,int ,int ) ;
 int G_Damage (TYPE_5__*,TYPE_5__*,TYPE_5__*,int ,int ,int,int ,int ) ;
 scalar_t__ G_InvulnerabilityEffect (TYPE_5__*,int ,int ,int ,int ) ;
 TYPE_5__* G_TempEntity (int ,int ) ;
 scalar_t__ LogAccuracyHit (TYPE_5__*,TYPE_5__*) ;
 int MASK_SHOT ;
 int MOD_MACHINEGUN ;
 float M_PI ;
 int SURF_NOIMPACT ;
 int SnapVectorTowards (int ,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,float,int ,int ) ;
 float cos (float) ;
 float crandom () ;
 int forward ;
 TYPE_5__* g_entities ;
 TYPE_7__ level ;
 int muzzle ;
 float random () ;
 int right ;
 int s_quadFactor ;
 float sin (float) ;
 int trap_Trace (TYPE_4__*,int ,int *,int *,int ,int,int ) ;
 int up ;

void Bullet_Fire (gentity_t *ent, float spread, int damage ) {
 trace_t tr;
 vec3_t end;



 float r;
 float u;
 gentity_t *tent;
 gentity_t *traceEnt;
 int i, passent;

 damage *= s_quadFactor;

 r = random() * M_PI * 2.0f;
 u = sin(r) * crandom() * spread * 16;
 r = cos(r) * crandom() * spread * 16;
 VectorMA (muzzle, 8192*16, forward, end);
 VectorMA (end, r, right, end);
 VectorMA (end, u, up, end);

 passent = ent->s.number;
 for (i = 0; i < 10; i++) {

  trap_Trace (&tr, muzzle, ((void*)0), ((void*)0), end, passent, MASK_SHOT);
  if ( tr.surfaceFlags & SURF_NOIMPACT ) {
   return;
  }

  traceEnt = &g_entities[ tr.entityNum ];


  SnapVectorTowards( tr.endpos, muzzle );


  if ( traceEnt->takedamage && traceEnt->client ) {
   tent = G_TempEntity( tr.endpos, EV_BULLET_HIT_FLESH );
   tent->s.eventParm = traceEnt->s.number;
   if( LogAccuracyHit( traceEnt, ent ) ) {
    ent->client->accuracy_hits++;
   }
  } else {
   tent = G_TempEntity( tr.endpos, EV_BULLET_HIT_WALL );
   tent->s.eventParm = DirToByte( tr.plane.normal );
  }
  tent->s.otherEntityNum = ent->s.number;

  if ( traceEnt->takedamage) {
    G_Damage( traceEnt, ent, ent, forward, tr.endpos,
     damage, 0, MOD_MACHINEGUN);



  }
  break;
 }
}
