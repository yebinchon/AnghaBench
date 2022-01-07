
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {int contents; struct TYPE_8__** children; TYPE_3__* plane; } ;
typedef TYPE_2__ mnode_t ;
struct TYPE_9__ {float dist; int normal; } ;
typedef TYPE_3__ cplane_t ;
struct TYPE_11__ {int (* Error ) (int ,char*) ;} ;
struct TYPE_10__ {TYPE_1__* world; } ;
struct TYPE_7__ {TYPE_2__* nodes; } ;


 float DotProduct (int const,int ) ;
 int ERR_DROP ;
 TYPE_5__ ri ;
 int stub1 (int ,char*) ;
 TYPE_4__ tr ;

__attribute__((used)) static mnode_t *R_PointInLeaf( const vec3_t p ) {
 mnode_t *node;
 float d;
 cplane_t *plane;

 if ( !tr.world ) {
  ri.Error (ERR_DROP, "R_PointInLeaf: bad model");
 }

 node = tr.world->nodes;
 while( 1 ) {
  if (node->contents != -1) {
   break;
  }
  plane = node->plane;
  d = DotProduct (p,plane->normal) - plane->dist;
  if (d > 0) {
   node = node->children[0];
  } else {
   node = node->children[1];
  }
 }

 return node;
}
