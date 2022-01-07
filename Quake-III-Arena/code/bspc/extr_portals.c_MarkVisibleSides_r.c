
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* side; int sidefound; int onnode; TYPE_3__** nodes; struct TYPE_7__** next; } ;
typedef TYPE_2__ portal_t ;
struct TYPE_8__ {scalar_t__ planenum; TYPE_2__* portals; int contents; struct TYPE_8__** children; } ;
typedef TYPE_3__ node_t ;
struct TYPE_6__ {int flags; } ;


 int FindPortalSide (TYPE_2__*) ;
 scalar_t__ PLANENUM_LEAF ;
 int SFL_VISIBLE ;

void MarkVisibleSides_r (node_t *node)
{
 portal_t *p;
 int s;

 if (node->planenum != PLANENUM_LEAF)
 {
  MarkVisibleSides_r (node->children[0]);
  MarkVisibleSides_r (node->children[1]);
  return;
 }


 if (!node->contents) return;


 for (p=node->portals ; p ; p = p->next[!s])
 {
  s = (p->nodes[0] == node);
  if (!p->onnode)
   continue;
  if (!p->sidefound)
   FindPortalSide (p);
  if (p->side)
   p->side->flags |= SFL_VISIBLE;
 }
}
