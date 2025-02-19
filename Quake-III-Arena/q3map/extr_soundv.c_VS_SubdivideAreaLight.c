
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int numpoints; int points; } ;
typedef TYPE_2__ winding_t ;
struct TYPE_17__ {int numpoints; int points; } ;
struct TYPE_19__ {float photons; float* emitColor; TYPE_4__* si; int * color; int origin; int type; int twosided; int * normal; int * plane; TYPE_1__ w; } ;
typedef TYPE_3__ vsound_t ;
typedef float* vec3_t ;
struct TYPE_20__ {float value; float* color; int contents; int backsplashFraction; int backsplashDistance; } ;
typedef TYPE_4__ shaderInfo_t ;
typedef scalar_t__ qboolean ;


 int CONTENTS_FOG ;
 int ClipWindingEpsilon (TYPE_2__*,float*,float,int ,TYPE_2__**,TYPE_2__**) ;
 int DotProduct (int ,float*) ;
 int FreeWinding (TYPE_2__*) ;
 int LIGHT_POINTFAKESURFACE ;
 int LIGHT_POINTRADIAL ;
 int ON_EPSILON ;
 int VectorAdd (int ,int *,int ) ;
 int VectorClear (float*) ;
 int VectorCopy (float*,int *) ;
 int VectorMA (int ,int ,float*,int ) ;
 int VectorScale (float*,float,float*) ;
 float WindingArea (TYPE_2__*) ;
 int WindingBounds (TYPE_2__*,float*,float*) ;
 int WindingCenter (TYPE_2__*,int ) ;
 float lightAreaScale ;
 float lightFormFactorValueScale ;
 TYPE_3__* malloc (int) ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int numvsounds ;
 scalar_t__ qfalse ;
 int qtrue ;
 TYPE_3__** vsounds ;

void VS_SubdivideAreaLight( shaderInfo_t *ls, winding_t *w, vec3_t normal,
      float areaSubdivide, qboolean backsplash ) {
 float area, value, intensity;
 vsound_t *dl, *dl2;
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
   VS_SubdivideAreaLight( ls, front, normal, areaSubdivide, qfalse );
   VS_SubdivideAreaLight( ls, back, normal, areaSubdivide, qfalse );
   FreeWinding( w );
   return;
  }
 }


 area = WindingArea (w);
 if ( area <= 0 || area > 20000000 ) {
  return;
 }

 dl = malloc(sizeof(*dl));
 memset (dl, 0, sizeof(*dl));
 dl->type = LIGHT_POINTFAKESURFACE;

 WindingCenter( w, dl->origin );
 memcpy(dl->w.points, w->points, sizeof(vec3_t) * w->numpoints);
 dl->w.numpoints = w->numpoints;
 VectorCopy ( normal, dl->normal);
 VectorCopy ( normal, dl->plane);
 dl->plane[3] = DotProduct( dl->origin, normal );

 value = ls->value;
 intensity = value * area * lightAreaScale;
 VectorAdd( dl->origin, dl->normal, dl->origin );

 VectorCopy( ls->color, dl->color );

 dl->photons = intensity;


 VectorScale( ls->color, value*lightFormFactorValueScale*lightAreaScale, dl->emitColor );

 VectorCopy(dl->emitColor, dl->color);

 dl->si = ls;

 if ( ls->contents & CONTENTS_FOG ) {
  dl->twosided = qtrue;
 }

 vsounds[numvsounds++] = dl;


 if ( backsplash && ls->backsplashFraction > 0 ) {

  dl2 = malloc(sizeof(*dl));
  memset (dl2, 0, sizeof(*dl2));
  dl2->type = LIGHT_POINTRADIAL;

  VectorMA( dl->origin, ls->backsplashDistance, normal, dl2->origin );

  VectorCopy( ls->color, dl2->color );

  dl2->photons = dl->photons * ls->backsplashFraction;
  dl2->si = ls;

  vsounds[numvsounds++] = dl2;
 }
}
