
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int winding_t ;
typedef float* vec3_t ;
struct TYPE_6__ {float value; float* color; int contents; int backsplashFraction; int backsplashDistance; } ;
typedef TYPE_1__ shaderInfo_t ;
typedef scalar_t__ qboolean ;
struct TYPE_7__ {float photons; TYPE_1__* si; int color; int origin; int type; void* next; int twosided; int emitColor; int normal; int dist; int * w; } ;
typedef TYPE_2__ light_t ;


 int CONTENTS_FOG ;
 int ClipWindingEpsilon (int *,float*,float,int ,int **,int **) ;
 int DotProduct (int ,float*) ;
 int FreeWinding (int *) ;
 int ON_EPSILON ;
 int VectorAdd (int ,int ,int ) ;
 int VectorClear (float*) ;
 int VectorCopy (float*,int ) ;
 int VectorMA (int ,int ,float*,int ) ;
 int VectorScale (float*,float,int ) ;
 float WindingArea (int *) ;
 int WindingBounds (int *,float*,float*) ;
 int WindingCenter (int *,int ) ;
 float areaScale ;
 int emit_area ;
 int emit_point ;
 float formFactorValueScale ;
 void* lights ;
 TYPE_2__* malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int numAreaLights ;
 scalar_t__ qfalse ;
 int qtrue ;

void SubdivideAreaLight( shaderInfo_t *ls, winding_t *w, vec3_t normal,
      float areaSubdivide, qboolean backsplash ) {
 float area, value, intensity;
 light_t *dl, *dl2;
 vec3_t mins, maxs;
 int axis;
 winding_t *front, *back;
 vec3_t planeNormal;
 float planeDist;

 if ( !w ) {
  return;
 }

 WindingBounds( w, mins, maxs );


 for ( axis = 0 ; axis < 3 ; axis++ ) {
  if ( maxs[axis] - mins[axis] > areaSubdivide ) {
   VectorClear( planeNormal );
   planeNormal[axis] = 1;
   planeDist = ( maxs[axis] + mins[axis] ) * 0.5;
   ClipWindingEpsilon ( w, planeNormal, planeDist, ON_EPSILON, &front, &back );
   SubdivideAreaLight( ls, front, normal, areaSubdivide, qfalse );
   SubdivideAreaLight( ls, back, normal, areaSubdivide, qfalse );
   FreeWinding( w );
   return;
  }
 }


 area = WindingArea (w);
 if ( area <= 0 || area > 20000000 ) {
  return;
 }

 numAreaLights++;
 dl = malloc(sizeof(*dl));
 memset (dl, 0, sizeof(*dl));
 dl->next = lights;
 lights = dl;
 dl->type = emit_area;

 WindingCenter( w, dl->origin );
 dl->w = w;
 VectorCopy ( normal, dl->normal);
 dl->dist = DotProduct( dl->origin, normal );

 value = ls->value;
 intensity = value * area * areaScale;
 VectorAdd( dl->origin, dl->normal, dl->origin );

 VectorCopy( ls->color, dl->color );

 dl->photons = intensity;


 VectorScale( ls->color, value*formFactorValueScale*areaScale, dl->emitColor );

 dl->si = ls;

 if ( ls->contents & CONTENTS_FOG ) {
  dl->twosided = qtrue;
 }


 if ( backsplash && ls->backsplashFraction > 0 ) {
  dl2 = malloc(sizeof(*dl));
  memset (dl2, 0, sizeof(*dl2));
  dl2->next = lights;
  lights = dl2;
  dl2->type = emit_point;

  VectorMA( dl->origin, ls->backsplashDistance, normal, dl2->origin );

  VectorCopy( ls->color, dl2->color );

  dl2->photons = dl->photons * ls->backsplashFraction;
  dl2->si = ls;
 }
}
