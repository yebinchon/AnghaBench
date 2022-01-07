
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_5__ {double* filter; scalar_t__ passSolid; } ;
typedef TYPE_1__ trace_t ;
typedef int traceWork_t ;
typedef scalar_t__ qboolean ;
struct TYPE_6__ {float* origin; scalar_t__ type; float* normal; float dist; float* emitColor; float photons; float radiusByDist; float* color; scalar_t__ linearLight; scalar_t__ twosided; int w; struct TYPE_6__* next; } ;
typedef TYPE_2__ light_t ;


 float DotProduct (float*,float*) ;
 float PointToPolygonFormFactor (float*,float*,int ) ;
 int SunToPlane (float*,float*,float*,int *) ;
 int TraceLine (float*,float*,TYPE_1__*,int ,int *) ;
 int VectorCopy (float*,float*) ;
 float VectorLength (float*) ;
 int VectorMA (float*,float,float*,float*) ;
 float VectorNormalize (float*,float*) ;
 int VectorSubtract (float*,float*,float*) ;
 float* ambientColor ;
 scalar_t__ emit_area ;
 scalar_t__ emit_point ;
 scalar_t__ emit_spotlight ;
 scalar_t__ exactPointToPolygon ;
 TYPE_2__* lights ;
 float linearScale ;
 int notrace ;
 int qfalse ;

void LightingAtSample( vec3_t origin, vec3_t normal, vec3_t color,
       qboolean testOcclusion, qboolean forceSunLight, traceWork_t *tw ) {
 light_t *light;
 trace_t trace;
 float angle;
 float add;
 float dist;
 vec3_t dir;

 VectorCopy( ambientColor, color );


 for ( light = lights ; light ; light = light->next ) {


  if ( DotProduct(light->origin, normal) - DotProduct(normal, origin) < 0 )
   continue;

  if ( exactPointToPolygon && light->type == emit_area ) {
   float factor;
   float d;
   vec3_t pushedOrigin;


   d = DotProduct( origin, light->normal ) - light->dist;
   if ( !light->twosided ) {
    if ( d < -1 ) {
     continue;
    }
   }



   if ( !notrace && testOcclusion ) {
    TraceLine( origin, light->origin, &trace, qfalse, tw );


    if ( trace.passSolid ) {
     continue;
    }
   } else {
    trace.filter[0] = 1.0;
    trace.filter[1] = 1.0;
    trace.filter[2] = 1.0;
   }



   if ( d > -8 && d < 8 ) {
    VectorMA( origin, (8-d), light->normal, pushedOrigin );
   } else {
    VectorCopy( origin, pushedOrigin );
   }


   factor = PointToPolygonFormFactor( pushedOrigin, normal, light->w );
   if ( factor <= 0 ) {
    if ( light->twosided ) {
     factor = -factor;
    } else {
     continue;
    }
   }
   color[0] += factor * light->emitColor[0] * trace.filter[0];
   color[1] += factor * light->emitColor[1] * trace.filter[1];
   color[2] += factor * light->emitColor[2] * trace.filter[2];

   continue;
  }


  if ( light->type == emit_point ) {
   VectorSubtract( light->origin, origin, dir );
   dist = VectorNormalize( dir, dir );

   if ( dist < 16 ) {
    dist = 16;
   }
   angle = DotProduct( normal, dir );
   if ( light->linearLight ) {
    add = angle * light->photons * linearScale - dist;
    if ( add < 0 ) {
     add = 0;
    }
   } else {
    add = light->photons / ( dist * dist ) * angle;
   }
  } else if ( light->type == emit_spotlight ) {
   float distByNormal;
   vec3_t pointAtDist;
   float radiusAtDist;
   float sampleRadius;
   vec3_t distToSample;
   float coneScale;

   VectorSubtract( light->origin, origin, dir );

   distByNormal = -DotProduct( dir, light->normal );
   if ( distByNormal < 0 ) {
    continue;
   }
   VectorMA( light->origin, distByNormal, light->normal, pointAtDist );
   radiusAtDist = light->radiusByDist * distByNormal;

   VectorSubtract( origin, pointAtDist, distToSample );
   sampleRadius = VectorLength( distToSample );

   if ( sampleRadius >= radiusAtDist ) {
    continue;
   }
   if ( sampleRadius <= radiusAtDist - 32 ) {
    coneScale = 1.0;
   } else {
    coneScale = ( radiusAtDist - sampleRadius ) / 32.0;
   }

   dist = VectorNormalize( dir, dir );

   if ( dist < 16 ) {
    dist = 16;
   }
   angle = DotProduct( normal, dir );
   add = light->photons / ( dist * dist ) * angle * coneScale;

  } else if ( light->type == emit_area ) {
   VectorSubtract( light->origin, origin, dir );
   dist = VectorNormalize( dir, dir );

   if ( dist < 16 ) {
    dist = 16;
   }
   angle = DotProduct( normal, dir );
   if ( angle <= 0 ) {
    continue;
   }
   angle *= -DotProduct( light->normal, dir );
   if ( angle <= 0 ) {
    continue;
   }

   if ( light->linearLight ) {
    add = angle * light->photons * linearScale - dist;
    if ( add < 0 ) {
     add = 0;
    }
   } else {
    add = light->photons / ( dist * dist ) * angle;
   }
  }

  if ( add <= 1.0 ) {
   continue;
  }


  if ( !notrace && testOcclusion ) {
   TraceLine( origin, light->origin, &trace, qfalse, tw );


   if ( trace.passSolid ) {
    continue;
   }
  } else {
   trace.filter[0] = 1;
   trace.filter[1] = 1;
   trace.filter[2] = 1;
  }


  color[0] += add * light->color[0] * trace.filter[0];
  color[1] += add * light->color[1] * trace.filter[1];
  color[2] += add * light->color[2] * trace.filter[2];
 }




 if ( testOcclusion || forceSunLight ) {
  SunToPlane( origin, normal, color, tw );
 }
}
