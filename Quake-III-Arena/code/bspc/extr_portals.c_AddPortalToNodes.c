
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__** next; TYPE_2__** nodes; } ;
typedef TYPE_1__ portal_t ;
struct TYPE_7__ {TYPE_1__* portals; } ;
typedef TYPE_2__ node_t ;


 int Error (char*) ;

void AddPortalToNodes (portal_t *p, node_t *front, node_t *back)
{
 if (p->nodes[0] || p->nodes[1])
  Error ("AddPortalToNode: allready included");

 p->nodes[0] = front;
 p->next[0] = front->portals;
 front->portals = p;

 p->nodes[1] = back;
 p->next[1] = back->portals;
 back->portals = p;
}
