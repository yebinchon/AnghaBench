
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_7__ {size_t numOpenLeafs; int* openLeafNumbers; TYPE_1__* trace; } ;
typedef TYPE_2__ traceWork_t ;
struct TYPE_8__ {int type; float dist; float* normal; int* children; } ;
typedef TYPE_3__ tnode_t ;
struct TYPE_6__ {int passSolid; int hit; } ;


 size_t MAX_MAP_LEAFS ;



 float TRACE_ON_EPSILON ;
 int VectorCopy (float* const,int ) ;
 int qfalse ;
 int qtrue ;
 TYPE_3__* tnodes ;

int TraceLine_r( int node, const vec3_t start, const vec3_t stop, traceWork_t *tw ) {
 tnode_t *tnode;
 float front, back;
 vec3_t mid;
 float frac;
 int side;
 int r;

 if (node & (1<<31)) {
  if (node & ( 1 << 30 ) ) {
   VectorCopy (start, tw->trace->hit);
   tw->trace->passSolid = qtrue;
   return qtrue;
  } else {

   if ( tw->numOpenLeafs == MAX_MAP_LEAFS ) {
    return qfalse;
   }
   tw->openLeafNumbers[ tw->numOpenLeafs ] = node & ~(3 << 30);
   tw->numOpenLeafs++;
   return qfalse;
  }
 }

 tnode = &tnodes[node];
 switch (tnode->type) {
 case 130:
  front = start[0] - tnode->dist;
  back = stop[0] - tnode->dist;
  break;
 case 129:
  front = start[1] - tnode->dist;
  back = stop[1] - tnode->dist;
  break;
 case 128:
  front = start[2] - tnode->dist;
  back = stop[2] - tnode->dist;
  break;
 default:
  front = (start[0]*tnode->normal[0] + start[1]*tnode->normal[1] + start[2]*tnode->normal[2]) - tnode->dist;
  back = (stop[0]*tnode->normal[0] + stop[1]*tnode->normal[1] + stop[2]*tnode->normal[2]) - tnode->dist;
  break;
 }

 if (front >= -TRACE_ON_EPSILON && back >= -TRACE_ON_EPSILON) {
  return TraceLine_r (tnode->children[0], start, stop, tw);
 }

 if (front < TRACE_ON_EPSILON && back < TRACE_ON_EPSILON) {
  return TraceLine_r (tnode->children[1], start, stop, tw);
 }

 side = front < 0;

 frac = front / (front-back);

 mid[0] = start[0] + (stop[0] - start[0])*frac;
 mid[1] = start[1] + (stop[1] - start[1])*frac;
 mid[2] = start[2] + (stop[2] - start[2])*frac;

 r = TraceLine_r (tnode->children[side], start, mid, tw);

 if (r) {
  return r;
 }


 return TraceLine_r (tnode->children[!side], mid, stop, tw);
}
