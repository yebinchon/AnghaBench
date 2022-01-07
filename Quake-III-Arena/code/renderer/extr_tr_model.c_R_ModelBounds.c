
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qhandle_t ;
struct TYPE_7__ {TYPE_3__** md3; TYPE_1__* bmodel; } ;
typedef TYPE_2__ model_t ;
struct TYPE_8__ {int ofsFrames; } ;
typedef TYPE_3__ md3Header_t ;
struct TYPE_9__ {int * bounds; } ;
typedef TYPE_4__ md3Frame_t ;
typedef int byte ;
struct TYPE_6__ {int * bounds; } ;


 TYPE_2__* R_GetModelByHandle (int ) ;
 int VectorClear (int ) ;
 int VectorCopy (int ,int ) ;

void R_ModelBounds( qhandle_t handle, vec3_t mins, vec3_t maxs ) {
 model_t *model;
 md3Header_t *header;
 md3Frame_t *frame;

 model = R_GetModelByHandle( handle );

 if ( model->bmodel ) {
  VectorCopy( model->bmodel->bounds[0], mins );
  VectorCopy( model->bmodel->bounds[1], maxs );
  return;
 }

 if ( !model->md3[0] ) {
  VectorClear( mins );
  VectorClear( maxs );
  return;
 }

 header = model->md3[0];

 frame = (md3Frame_t *)( (byte *)header + header->ofsFrames );

 VectorCopy( frame->bounds[0], mins );
 VectorCopy( frame->bounds[1], maxs );
}
