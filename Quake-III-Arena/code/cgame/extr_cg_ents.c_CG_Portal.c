
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {double skinNum; int frame; int oldframe; int reType; int * axis; int oldorigin; int origin; } ;
typedef TYPE_1__ refEntity_t ;
struct TYPE_8__ {double clientNum; int frame; int powerups; int eventParm; int origin2; } ;
typedef TYPE_2__ entityState_t ;
typedef int ent ;
struct TYPE_9__ {int lerpOrigin; TYPE_2__ currentState; } ;
typedef TYPE_3__ centity_t ;


 int ByteToDir (int ,int ) ;
 int CrossProduct (int ,int ,int ) ;
 int PerpendicularVector (int ,int ) ;
 int RT_PORTALSURFACE ;
 int VectorCopy (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int trap_R_AddRefEntityToScene (TYPE_1__*) ;
 int vec3_origin ;

__attribute__((used)) static void CG_Portal( centity_t *cent ) {
 refEntity_t ent;
 entityState_t *s1;

 s1 = &cent->currentState;


 memset (&ent, 0, sizeof(ent));
 VectorCopy( cent->lerpOrigin, ent.origin );
 VectorCopy( s1->origin2, ent.oldorigin );
 ByteToDir( s1->eventParm, ent.axis[0] );
 PerpendicularVector( ent.axis[1], ent.axis[0] );



 VectorSubtract( vec3_origin, ent.axis[1], ent.axis[1] );

 CrossProduct( ent.axis[0], ent.axis[1], ent.axis[2] );
 ent.reType = RT_PORTALSURFACE;
 ent.oldframe = s1->powerups;
 ent.frame = s1->frame;
 ent.skinNum = s1->clientNum/256.0 * 360;


 trap_R_AddRefEntityToScene(&ent);
}
