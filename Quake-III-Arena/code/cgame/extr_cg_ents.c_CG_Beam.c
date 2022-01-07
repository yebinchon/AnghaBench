
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int renderfx; int reType; int axis; int oldorigin; int origin; } ;
typedef TYPE_2__ refEntity_t ;
struct TYPE_8__ {int trBase; } ;
struct TYPE_10__ {int origin2; TYPE_1__ pos; } ;
typedef TYPE_3__ entityState_t ;
typedef int ent ;
struct TYPE_11__ {TYPE_3__ currentState; } ;
typedef TYPE_4__ centity_t ;


 int AxisClear (int ) ;
 int RF_NOSHADOW ;
 int RT_BEAM ;
 int VectorCopy (int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int trap_R_AddRefEntityToScene (TYPE_2__*) ;

void CG_Beam( centity_t *cent ) {
 refEntity_t ent;
 entityState_t *s1;

 s1 = &cent->currentState;


 memset (&ent, 0, sizeof(ent));
 VectorCopy( s1->pos.trBase, ent.origin );
 VectorCopy( s1->origin2, ent.oldorigin );
 AxisClear( ent.axis );
 ent.reType = RT_BEAM;

 ent.renderfx = RF_NOSHADOW;


 trap_R_AddRefEntityToScene(&ent);
}
