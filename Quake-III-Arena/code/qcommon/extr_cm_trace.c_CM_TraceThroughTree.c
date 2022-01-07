
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_8__ {float fraction; } ;
struct TYPE_9__ {float* extents; float maxOffset; scalar_t__ isPoint; TYPE_1__ trace; } ;
typedef TYPE_2__ traceWork_t ;
struct TYPE_10__ {int type; float dist; int* normal; } ;
typedef TYPE_3__ cplane_t ;
struct TYPE_11__ {int* children; TYPE_3__* plane; } ;
typedef TYPE_4__ cNode_t ;
struct TYPE_12__ {TYPE_4__* nodes; int * leafs; } ;


 int CM_TraceThroughLeaf (TYPE_2__*,int *) ;
 float DotProduct (int*,float*) ;
 float SURFACE_CLIP_EPSILON ;
 TYPE_5__ cm ;
 float fabs (int) ;

void CM_TraceThroughTree( traceWork_t *tw, int num, float p1f, float p2f, vec3_t p1, vec3_t p2) {
 cNode_t *node;
 cplane_t *plane;
 float t1, t2, offset;
 float frac, frac2;
 float idist;
 vec3_t mid;
 int side;
 float midf;

 if (tw->trace.fraction <= p1f) {
  return;
 }


 if (num < 0) {
  CM_TraceThroughLeaf( tw, &cm.leafs[-1-num] );
  return;
 }





 node = cm.nodes + num;
 plane = node->plane;


 if ( plane->type < 3 ) {
  t1 = p1[plane->type] - plane->dist;
  t2 = p2[plane->type] - plane->dist;
  offset = tw->extents[plane->type];
 } else {
  t1 = DotProduct (plane->normal, p1) - plane->dist;
  t2 = DotProduct (plane->normal, p2) - plane->dist;
  if ( tw->isPoint ) {
   offset = 0;
  } else {
   offset = 2048;
  }
 }


 if ( t1 >= offset + 1 && t2 >= offset + 1 ) {
  CM_TraceThroughTree( tw, node->children[0], p1f, p2f, p1, p2 );
  return;
 }
 if ( t1 < -offset - 1 && t2 < -offset - 1 ) {
  CM_TraceThroughTree( tw, node->children[1], p1f, p2f, p1, p2 );
  return;
 }


 if ( t1 < t2 ) {
  idist = 1.0/(t1-t2);
  side = 1;
  frac2 = (t1 + offset + SURFACE_CLIP_EPSILON)*idist;
  frac = (t1 - offset + SURFACE_CLIP_EPSILON)*idist;
 } else if (t1 > t2) {
  idist = 1.0/(t1-t2);
  side = 0;
  frac2 = (t1 - offset - SURFACE_CLIP_EPSILON)*idist;
  frac = (t1 + offset + SURFACE_CLIP_EPSILON)*idist;
 } else {
  side = 0;
  frac = 1;
  frac2 = 0;
 }


 if ( frac < 0 ) {
  frac = 0;
 }
 if ( frac > 1 ) {
  frac = 1;
 }

 midf = p1f + (p2f - p1f)*frac;

 mid[0] = p1[0] + frac*(p2[0] - p1[0]);
 mid[1] = p1[1] + frac*(p2[1] - p1[1]);
 mid[2] = p1[2] + frac*(p2[2] - p1[2]);

 CM_TraceThroughTree( tw, node->children[side], p1f, midf, p1, mid );



 if ( frac2 < 0 ) {
  frac2 = 0;
 }
 if ( frac2 > 1 ) {
  frac2 = 1;
 }

 midf = p1f + (p2f - p1f)*frac2;

 mid[0] = p1[0] + frac2*(p2[0] - p1[0]);
 mid[1] = p1[1] + frac2*(p2[1] - p1[1]);
 mid[2] = p1[2] + frac2*(p2[2] - p1[2]);

 CM_TraceThroughTree( tw, node->children[side^1], midf, p2f, mid, p2 );
}
