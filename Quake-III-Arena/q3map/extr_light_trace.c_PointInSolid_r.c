
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_3__ {int type; float dist; float* normal; int* children; } ;
typedef TYPE_1__ tnode_t ;
typedef int qboolean ;





 int qfalse ;
 int qtrue ;
 TYPE_1__* tnodes ;

qboolean PointInSolid_r( vec3_t start, int node ) {
 tnode_t *tnode;
 float front;

 while ( !(node & (1<<31) ) ) {
  tnode = &tnodes[node];
  switch (tnode->type) {
  case 130:
   front = start[0] - tnode->dist;
   break;
  case 129:
   front = start[1] - tnode->dist;
   break;
  case 128:
   front = start[2] - tnode->dist;
   break;
  default:
   front = (start[0]*tnode->normal[0] + start[1]*tnode->normal[1] + start[2]*tnode->normal[2]) - tnode->dist;
   break;
  }

  if ( front == 0 ) {

   return (qboolean) ( PointInSolid_r( start, tnode->children[0] )
    | PointInSolid_r( start, tnode->children[1] ) );
  }

  if ( front > 0 ) {
   node = tnode->children[0];
  } else {
   node = tnode->children[1];
  }
 }

 if ( node & ( 1 << 30 ) ) {
  return qtrue;
 }
 return qfalse;
}
