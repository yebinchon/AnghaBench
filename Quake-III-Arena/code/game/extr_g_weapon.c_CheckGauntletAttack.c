
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int vec3_t ;
struct TYPE_20__ {int normal; } ;
struct TYPE_26__ {int surfaceFlags; size_t entityNum; int endpos; TYPE_1__ plane; } ;
typedef TYPE_7__ trace_t ;
typedef int qboolean ;
struct TYPE_21__ {int weapon; int eventParm; int number; int otherEntityNum; } ;
struct TYPE_27__ {TYPE_6__* client; scalar_t__ takedamage; TYPE_2__ s; } ;
typedef TYPE_8__ gentity_t ;
struct TYPE_22__ {scalar_t__* powerups; int viewangles; } ;
struct TYPE_25__ {TYPE_5__* persistantPowerup; TYPE_3__ ps; } ;
struct TYPE_24__ {TYPE_4__* item; } ;
struct TYPE_23__ {scalar_t__ giTag; } ;
struct TYPE_19__ {int value; } ;


 int AngleVectors (int ,int ,int ,int ) ;
 int CalcMuzzlePoint (TYPE_8__*,int ,int ,int ,int ) ;
 int DirToByte (int ) ;
 int EV_MISSILE_HIT ;
 int EV_POWERUP_QUAD ;
 int G_AddEvent (TYPE_8__*,int ,int ) ;
 int G_Damage (TYPE_8__*,TYPE_8__*,TYPE_8__*,int ,int ,int,int ,int ) ;
 TYPE_8__* G_TempEntity (int ,int ) ;
 int MASK_SHOT ;
 int MOD_GAUNTLET ;
 scalar_t__ PW_DOUBLER ;
 size_t PW_QUAD ;
 int SURF_NOIMPACT ;
 int VectorMA (int ,int,int ,int ) ;
 int forward ;
 TYPE_8__* g_entities ;
 TYPE_10__ g_quadfactor ;
 int muzzle ;
 int qfalse ;
 int qtrue ;
 int right ;
 int s_quadFactor ;
 int trap_Trace (TYPE_7__*,int ,int *,int *,int ,int ,int ) ;
 int up ;

qboolean CheckGauntletAttack( gentity_t *ent ) {
 trace_t tr;
 vec3_t end;
 gentity_t *tent;
 gentity_t *traceEnt;
 int damage;


 AngleVectors (ent->client->ps.viewangles, forward, right, up);

 CalcMuzzlePoint ( ent, forward, right, up, muzzle );

 VectorMA (muzzle, 32, forward, end);

 trap_Trace (&tr, muzzle, ((void*)0), ((void*)0), end, ent->s.number, MASK_SHOT);
 if ( tr.surfaceFlags & SURF_NOIMPACT ) {
  return qfalse;
 }

 traceEnt = &g_entities[ tr.entityNum ];


 if ( traceEnt->takedamage && traceEnt->client ) {
  tent = G_TempEntity( tr.endpos, EV_MISSILE_HIT );
  tent->s.otherEntityNum = traceEnt->s.number;
  tent->s.eventParm = DirToByte( tr.plane.normal );
  tent->s.weapon = ent->s.weapon;
 }

 if ( !traceEnt->takedamage) {
  return qfalse;
 }

 if (ent->client->ps.powerups[PW_QUAD] ) {
  G_AddEvent( ent, EV_POWERUP_QUAD, 0 );
  s_quadFactor = g_quadfactor.value;
 } else {
  s_quadFactor = 1;
 }






 damage = 50 * s_quadFactor;
 G_Damage( traceEnt, ent, ent, forward, tr.endpos,
  damage, 0, MOD_GAUNTLET );

 return qtrue;
}
