
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__** nodes; struct TYPE_4__** next; } ;
typedef TYPE_1__ portal_t ;
struct TYPE_5__ {int occupied; TYPE_1__* portals; scalar_t__ opaque; } ;
typedef TYPE_2__ node_t ;


 int c_floodedleafs ;

void FloodPortals_r (node_t *node, int dist) {
 portal_t *p;
 int s;

 if ( node->occupied ) {
  return;
 }

 if ( node->opaque ) {
  return;
 }

 c_floodedleafs++;
 node->occupied = dist;

 for (p=node->portals ; p ; p = p->next[s]) {
  s = (p->nodes[1] == node);
  FloodPortals_r (p->nodes[!s], dist+1);
 }
}
