
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int skinNum; int hModel; int renderfx; int axis; int oldorigin; int origin; } ;
typedef TYPE_1__ refEntity_t ;
struct TYPE_10__ {scalar_t__ solid; size_t modelindex; int modelindex2; } ;
typedef TYPE_2__ entityState_t ;
typedef int ent ;
struct TYPE_11__ {int lerpAngles; int lerpOrigin; TYPE_2__ currentState; } ;
typedef TYPE_3__ centity_t ;
struct TYPE_13__ {int time; } ;
struct TYPE_12__ {int * gameModels; int * inlineDrawModel; } ;


 int AnglesToAxis (int ,int ) ;
 int RF_NOSHADOW ;
 scalar_t__ SOLID_BMODEL ;
 int VectorCopy (int ,int ) ;
 TYPE_7__ cg ;
 TYPE_6__ cgs ;
 int memset (TYPE_1__*,int ,int) ;
 int trap_R_AddRefEntityToScene (TYPE_1__*) ;

__attribute__((used)) static void CG_Mover( centity_t *cent ) {
 refEntity_t ent;
 entityState_t *s1;

 s1 = &cent->currentState;


 memset (&ent, 0, sizeof(ent));
 VectorCopy( cent->lerpOrigin, ent.origin);
 VectorCopy( cent->lerpOrigin, ent.oldorigin);
 AnglesToAxis( cent->lerpAngles, ent.axis );

 ent.renderfx = RF_NOSHADOW;


 ent.skinNum = ( cg.time >> 6 ) & 1;


 if ( s1->solid == SOLID_BMODEL ) {
  ent.hModel = cgs.inlineDrawModel[s1->modelindex];
 } else {
  ent.hModel = cgs.gameModels[s1->modelindex];
 }


 trap_R_AddRefEntityToScene(&ent);


 if ( s1->modelindex2 ) {
  ent.skinNum = 0;
  ent.hModel = cgs.gameModels[s1->modelindex2];
  trap_R_AddRefEntityToScene(&ent);
 }

}
