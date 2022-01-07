
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int axis; int renderfx; int hModel; int oldorigin; int origin; scalar_t__ backlerp; int frame; int oldframe; } ;
typedef TYPE_3__ refEntity_t ;
struct TYPE_14__ {size_t modelindex; scalar_t__ number; int frame; } ;
typedef TYPE_4__ entityState_t ;
typedef int ent ;
struct TYPE_15__ {int lerpAngles; int lerpOrigin; TYPE_4__ currentState; } ;
typedef TYPE_5__ centity_t ;
struct TYPE_17__ {TYPE_2__* snap; } ;
struct TYPE_16__ {int * gameModels; } ;
struct TYPE_11__ {scalar_t__ clientNum; } ;
struct TYPE_12__ {TYPE_1__ ps; } ;


 int AnglesToAxis (int ,int ) ;
 int RF_THIRD_PERSON ;
 int VectorCopy (int ,int ) ;
 TYPE_9__ cg ;
 TYPE_8__ cgs ;
 int memset (TYPE_3__*,int ,int) ;
 int trap_R_AddRefEntityToScene (TYPE_3__*) ;

__attribute__((used)) static void CG_General( centity_t *cent ) {
 refEntity_t ent;
 entityState_t *s1;

 s1 = &cent->currentState;


 if (!s1->modelindex) {
  return;
 }

 memset (&ent, 0, sizeof(ent));



 ent.frame = s1->frame;
 ent.oldframe = ent.frame;
 ent.backlerp = 0;

 VectorCopy( cent->lerpOrigin, ent.origin);
 VectorCopy( cent->lerpOrigin, ent.oldorigin);

 ent.hModel = cgs.gameModels[s1->modelindex];


 if (s1->number == cg.snap->ps.clientNum) {
  ent.renderfx |= RF_THIRD_PERSON;
 }


 AnglesToAxis( cent->lerpAngles, ent.axis );


 trap_R_AddRefEntityToScene (&ent);
}
