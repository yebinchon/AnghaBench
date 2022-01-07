
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int missileRenderfx; int missileModel; scalar_t__ missileSound; } ;
typedef TYPE_2__ weaponInfo_t ;
struct TYPE_15__ {int skinNum; int renderfx; int** axis; int hModel; int oldorigin; int origin; } ;
typedef TYPE_3__ refEntity_t ;
struct TYPE_13__ {int trDelta; } ;
struct TYPE_16__ {size_t weapon; TYPE_1__ pos; int number; int angles; } ;
typedef TYPE_4__ entityState_t ;
typedef int ent ;
struct TYPE_17__ {int lerpOrigin; TYPE_4__ currentState; int lerpAngles; } ;
typedef TYPE_5__ centity_t ;
struct TYPE_18__ {int clientFrame; } ;


 int CG_GrappleTrail (TYPE_5__*,TYPE_2__ const*) ;
 int RF_NOSHADOW ;
 int VectorCopy (int ,int ) ;
 scalar_t__ VectorNormalize2 (int ,int*) ;
 size_t WP_NUM_WEAPONS ;
 TYPE_9__ cg ;
 TYPE_2__* cg_weapons ;
 int memset (TYPE_3__*,int ,int) ;
 int trap_R_AddRefEntityToScene (TYPE_3__*) ;
 int trap_S_AddLoopingSound (int ,int ,int ,scalar_t__) ;
 int vec3_origin ;

__attribute__((used)) static void CG_Grapple( centity_t *cent ) {
 refEntity_t ent;
 entityState_t *s1;
 const weaponInfo_t *weapon;

 s1 = &cent->currentState;
 if ( s1->weapon > WP_NUM_WEAPONS ) {
  s1->weapon = 0;
 }
 weapon = &cg_weapons[s1->weapon];


 VectorCopy( s1->angles, cent->lerpAngles);
 CG_GrappleTrail ( cent, weapon );


 memset (&ent, 0, sizeof(ent));
 VectorCopy( cent->lerpOrigin, ent.origin);
 VectorCopy( cent->lerpOrigin, ent.oldorigin);


 ent.skinNum = cg.clientFrame & 1;
 ent.hModel = weapon->missileModel;
 ent.renderfx = weapon->missileRenderfx | RF_NOSHADOW;


 if ( VectorNormalize2( s1->pos.trDelta, ent.axis[0] ) == 0 ) {
  ent.axis[0][2] = 1;
 }

 trap_R_AddRefEntityToScene( &ent );
}
