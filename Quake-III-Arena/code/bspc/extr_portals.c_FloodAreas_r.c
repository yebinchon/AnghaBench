
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__** nodes; struct TYPE_10__** next; } ;
typedef TYPE_2__ portal_t ;
struct TYPE_11__ {scalar_t__ contents; scalar_t__ occupied; TYPE_2__* portals; scalar_t__ area; TYPE_5__* brushlist; } ;
typedef TYPE_3__ node_t ;
struct TYPE_12__ {scalar_t__* portalareas; } ;
typedef TYPE_4__ entity_t ;
struct TYPE_13__ {TYPE_1__* original; } ;
typedef TYPE_5__ bspbrush_t ;
struct TYPE_9__ {size_t entitynum; } ;


 scalar_t__ CONTENTS_AREAPORTAL ;
 int Log_Print (char*,size_t) ;
 int Portal_EntityFlood (TYPE_2__*,int) ;
 scalar_t__ c_areas ;
 TYPE_4__* entities ;

void FloodAreas_r (node_t *node)
{
 portal_t *p;
 int s;
 bspbrush_t *b;
 entity_t *e;

 if (node->contents == CONTENTS_AREAPORTAL)
 {

  b = node->brushlist;
  e = &entities[b->original->entitynum];



  if (e->portalareas[0] == c_areas || e->portalareas[1] == c_areas)
   return;


  if (e->portalareas[1])
  {
   Log_Print("WARNING: areaportal entity %i touches > 2 areas\n", b->original->entitynum);
   return;
  }
  if (e->portalareas[0])
   e->portalareas[1] = c_areas;
  else
   e->portalareas[0] = c_areas;

  return;
 }

 if (node->area)
  return;
 node->area = c_areas;

 for (p=node->portals ; p ; p = p->next[s])
 {
  s = (p->nodes[1] == node);




  if (!Portal_EntityFlood (p, s))
   continue;

  FloodAreas_r (p->nodes[!s]);
 }
}
