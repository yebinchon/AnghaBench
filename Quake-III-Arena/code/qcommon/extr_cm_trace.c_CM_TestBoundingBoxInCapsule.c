
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_7__ {double radius; double halfheight; int offset; int use; } ;
struct TYPE_8__ {double* start; double* end; int * size; TYPE_1__ sphere; } ;
typedef TYPE_2__ traceWork_t ;
struct TYPE_9__ {int leaf; } ;
typedef TYPE_3__ cmodel_t ;
typedef int clipHandle_t ;


 TYPE_3__* CM_ClipHandleToModel (int ) ;
 int CM_ModelBounds (int ,double*,double*) ;
 int CM_TempBoxModel (int ,int ,int ) ;
 int CM_TestInLeaf (TYPE_2__*,int *) ;
 int VectorSet (int ,int ,int ,double) ;
 int qfalse ;
 int qtrue ;

void CM_TestBoundingBoxInCapsule( traceWork_t *tw, clipHandle_t model ) {
 vec3_t mins, maxs, offset, size[2];
 clipHandle_t h;
 cmodel_t *cmod;
 int i;


 CM_ModelBounds(model, mins, maxs);


 for ( i = 0 ; i < 3 ; i++ ) {
  offset[i] = ( mins[i] + maxs[i] ) * 0.5;
  size[0][i] = mins[i] - offset[i];
  size[1][i] = maxs[i] - offset[i];
  tw->start[i] -= offset[i];
  tw->end[i] -= offset[i];
 }


 tw->sphere.use = qtrue;
 tw->sphere.radius = ( size[1][0] > size[1][2] ) ? size[1][2]: size[1][0];
 tw->sphere.halfheight = size[1][2];
 VectorSet( tw->sphere.offset, 0, 0, size[1][2] - tw->sphere.radius );


 h = CM_TempBoxModel(tw->size[0], tw->size[1], qfalse);

 cmod = CM_ClipHandleToModel( h );
 CM_TestInLeaf( tw, &cmod->leaf );
}
