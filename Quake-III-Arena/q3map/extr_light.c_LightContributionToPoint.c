
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_5__ {scalar_t__ passSolid; } ;
typedef TYPE_1__ trace_t ;
typedef int traceWork_t ;
typedef int qboolean ;
struct TYPE_6__ {scalar_t__ type; float dist; float photons; float* color; int origin; scalar_t__ linearLight; int emitColor; scalar_t__ twosided; int w; int normal; } ;
typedef TYPE_2__ light_t ;


 float DotProduct (float* const,int ) ;
 float PointToPolygonFormFactor (float* const,float*,int ) ;
 int TraceLine (float* const,int ,TYPE_1__*,int ,int *) ;
 int VectorClear (float*) ;
 float VectorLength (float*) ;
 scalar_t__ VectorNormalize (float*,float*) ;
 int VectorScale (int ,float,float*) ;
 int VectorSubtract (int ,float* const,float*) ;
 scalar_t__ emit_area ;
 scalar_t__ emit_point ;
 scalar_t__ emit_spotlight ;
 scalar_t__ exactPointToPolygon ;
 float linearScale ;
 int qfalse ;
 int qtrue ;

qboolean LightContributionToPoint( const light_t *light, const vec3_t origin,
          vec3_t color, traceWork_t *tw ) {
 trace_t trace;
 float add;

 add = 0;

 VectorClear( color );


 if ( exactPointToPolygon && light->type == emit_area ) {
  float factor;
  float d;
  vec3_t normal;


  d = DotProduct( origin, light->normal ) - light->dist;
  if ( !light->twosided ) {
   if ( d < 1 ) {
    return qfalse;
   }
  }



  TraceLine( origin, light->origin, &trace, qfalse, tw );
  if ( trace.passSolid ) {
   return qfalse;
  }


  VectorSubtract( light->origin, origin, normal );
  if ( VectorNormalize( normal, normal ) == 0 ) {
   return qfalse;
  }
  factor = PointToPolygonFormFactor( origin, normal, light->w );
  if ( factor <= 0 ) {
   if ( light->twosided ) {
    factor = -factor;
   } else {
    return qfalse;
   }
  }
  VectorScale( light->emitColor, factor, color );
  return qtrue;
 }


 if ( light->type == emit_point || light->type == emit_spotlight ) {
  vec3_t dir;
  float dist;

  VectorSubtract( light->origin, origin, dir );
  dist = VectorLength( dir );

  if ( dist < 16 ) {
   dist = 16;
  }
  if ( light->linearLight ) {
   add = light->photons * linearScale - dist;
   if ( add < 0 ) {
    add = 0;
   }
  } else {
   add = light->photons / ( dist * dist );
  }
 } else {
  return qfalse;
 }

 if ( add <= 1.0 ) {
  return qfalse;
 }


 TraceLine( origin, light->origin, &trace, qfalse, tw );


 if ( trace.passSolid ) {
  return qfalse;
 }


 color[0] = add * light->color[0];
 color[1] = add * light->color[1];
 color[2] = add * light->color[2];

 return qtrue;
}
