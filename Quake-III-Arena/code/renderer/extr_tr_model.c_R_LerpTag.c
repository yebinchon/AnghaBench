
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int qhandle_t ;
struct TYPE_7__ {float** axis; float* origin; } ;
typedef TYPE_1__ orientation_t ;
struct TYPE_8__ {int * md3; } ;
typedef TYPE_2__ model_t ;
struct TYPE_9__ {float* origin; float** axis; } ;
typedef TYPE_3__ md3Tag_t ;


 int AxisClear (float**) ;
 TYPE_2__* R_GetModelByHandle (int ) ;
 TYPE_3__* R_GetTag (int ,int,char const*) ;
 int VectorClear (float*) ;
 int VectorNormalize (float*) ;
 int qfalse ;
 int qtrue ;

int R_LerpTag( orientation_t *tag, qhandle_t handle, int startFrame, int endFrame,
      float frac, const char *tagName ) {
 md3Tag_t *start, *end;
 int i;
 float frontLerp, backLerp;
 model_t *model;

 model = R_GetModelByHandle( handle );
 if ( !model->md3[0] ) {
  AxisClear( tag->axis );
  VectorClear( tag->origin );
  return qfalse;
 }

 start = R_GetTag( model->md3[0], startFrame, tagName );
 end = R_GetTag( model->md3[0], endFrame, tagName );
 if ( !start || !end ) {
  AxisClear( tag->axis );
  VectorClear( tag->origin );
  return qfalse;
 }

 frontLerp = frac;
 backLerp = 1.0f - frac;

 for ( i = 0 ; i < 3 ; i++ ) {
  tag->origin[i] = start->origin[i] * backLerp + end->origin[i] * frontLerp;
  tag->axis[0][i] = start->axis[0][i] * backLerp + end->axis[0][i] * frontLerp;
  tag->axis[1][i] = start->axis[1][i] * backLerp + end->axis[1][i] * frontLerp;
  tag->axis[2][i] = start->axis[2][i] * backLerp + end->axis[2][i] * frontLerp;
 }
 VectorNormalize( tag->axis[0] );
 VectorNormalize( tag->axis[1] );
 VectorNormalize( tag->axis[2] );
 return qtrue;
}
