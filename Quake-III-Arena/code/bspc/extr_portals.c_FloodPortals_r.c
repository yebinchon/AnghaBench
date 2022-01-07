
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__** nodes; struct TYPE_5__** next; } ;
typedef TYPE_1__ portal_t ;
struct TYPE_6__ {int occupied; TYPE_1__* portals; } ;
typedef TYPE_2__ node_t ;


 int Error (char*) ;
 int Log_Print (char*,int ) ;
 int Portal_EntityFlood (TYPE_1__*,int) ;
 int numrec ;

void FloodPortals_r (node_t *node, int dist)
{
 portal_t *p;
 int s;


 Log_Print("\r%6d", ++numrec);

 if (node->occupied) Error("FloodPortals_r: node already occupied\n");
 if (!node)
 {
  Error("FloodPortals_r: NULL node\n");
 }
 node->occupied = dist;

 for (p = node->portals; p; p = p->next[s])
 {
  s = (p->nodes[1] == node);

  if (p->nodes[!s]->occupied) continue;

  if (!Portal_EntityFlood(p, s)) continue;

  FloodPortals_r(p->nodes[!s], dist+1);
 }
 Log_Print("\r%6d", --numrec);
}
