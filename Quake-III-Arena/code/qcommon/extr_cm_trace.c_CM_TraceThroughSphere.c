
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_5__ {int normal; int dist; } ;
struct TYPE_6__ {float fraction; int contents; TYPE_1__ plane; void* allsolid; void* startsolid; } ;
struct TYPE_7__ {TYPE_2__ trace; int modelOrigin; } ;
typedef TYPE_3__ traceWork_t ;


 float CM_DistanceFromLineSquared (float*,float*,float*,float*) ;
 int CONTENTS_BODY ;
 int DotProduct (int ,float*) ;
 float RADIUS_EPSILON ;
 float SURFACE_CLIP_EPSILON ;
 float Square (float) ;
 float SquareRootFloat (float) ;
 int VectorAdd (int ,float*,float*) ;
 int VectorCopy (float*,int ) ;
 float VectorLength (float*) ;
 float VectorLengthSquared (float*) ;
 int VectorMA (float*,float,float*,float*) ;
 float VectorNormalize (float*) ;
 int VectorScale (float*,float,float*) ;
 int VectorSubtract (float*,float*,float*) ;
 void* qtrue ;

void CM_TraceThroughSphere( traceWork_t *tw, vec3_t origin, float radius, vec3_t start, vec3_t end ) {
 float l1, l2, length, scale, fraction;
 float a, b, c, d, sqrtd;
 vec3_t v1, dir, intersection;


 VectorSubtract(start, origin, dir);
 l1 = VectorLengthSquared(dir);
 if (l1 < Square(radius)) {
  tw->trace.fraction = 0;
  tw->trace.startsolid = qtrue;

  VectorSubtract(end, origin, dir);
  l1 = VectorLengthSquared(dir);
  if (l1 < Square(radius)) {
   tw->trace.allsolid = qtrue;
  }
  return;
 }

 VectorSubtract(end, start, dir);
 length = VectorNormalize(dir);

 l1 = CM_DistanceFromLineSquared(origin, start, end, dir);
 VectorSubtract(end, origin, v1);
 l2 = VectorLengthSquared(v1);

 if (l1 >= Square(radius) && l2 > Square(radius+SURFACE_CLIP_EPSILON)) {
  return;
 }






 VectorSubtract(start, origin, v1);

 a = 1.0f;
 b = 2.0f * (dir[0] * v1[0] + dir[1] * v1[1] + dir[2] * v1[2]);
 c = v1[0] * v1[0] + v1[1] * v1[1] + v1[2] * v1[2] - (radius+RADIUS_EPSILON) * (radius+RADIUS_EPSILON);

 d = b * b - 4.0f * c;
 if (d > 0) {
  sqrtd = SquareRootFloat(d);

  fraction = (- b - sqrtd) * 0.5f;

  if (fraction < 0) {
   fraction = 0;
  }
  else {
   fraction /= length;
  }
  if ( fraction < tw->trace.fraction ) {
   tw->trace.fraction = fraction;
   VectorSubtract(end, start, dir);
   VectorMA(start, fraction, dir, intersection);
   VectorSubtract(intersection, origin, dir);






   scale = 1 / (radius+RADIUS_EPSILON);
   VectorScale(dir, scale, dir);
   VectorCopy(dir, tw->trace.plane.normal);
   VectorAdd( tw->modelOrigin, intersection, intersection);
   tw->trace.plane.dist = DotProduct(tw->trace.plane.normal, intersection);
   tw->trace.contents = CONTENTS_BODY;
  }
 }
 else if (d == 0) {


 }

}
