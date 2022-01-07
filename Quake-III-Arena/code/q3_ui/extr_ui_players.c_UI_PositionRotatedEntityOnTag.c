
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {int * axis; int origin; scalar_t__ backlerp; int frame; int oldframe; } ;
typedef TYPE_1__ refEntity_t ;
struct TYPE_7__ {int * axis; int * origin; } ;
typedef TYPE_2__ orientation_t ;
typedef int clipHandle_t ;


 int MatrixMultiply (int *,int *,int *) ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,int ,int ,int ) ;
 int trap_CM_LerpTag (TYPE_2__*,int ,int ,int ,scalar_t__,char*) ;

__attribute__((used)) static void UI_PositionRotatedEntityOnTag( refEntity_t *entity, const refEntity_t *parent,
       clipHandle_t parentModel, char *tagName ) {
 int i;
 orientation_t lerped;
 vec3_t tempAxis[3];


 trap_CM_LerpTag( &lerped, parentModel, parent->oldframe, parent->frame,
  1.0 - parent->backlerp, tagName );


 VectorCopy( parent->origin, entity->origin );
 for ( i = 0 ; i < 3 ; i++ ) {
  VectorMA( entity->origin, lerped.origin[i], parent->axis[i], entity->origin );
 }


 MatrixMultiply( entity->axis, ((refEntity_t *)parent)->axis, tempAxis );
 MatrixMultiply( lerped.axis, tempAxis, entity->axis );
}
