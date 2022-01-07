
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int normal; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_10__ {size_t planenum; TYPE_3__* faces; } ;
typedef TYPE_2__ node_t ;
struct TYPE_11__ {size_t planenum; struct TYPE_11__* next; scalar_t__* split; scalar_t__ merged; } ;
typedef TYPE_3__ face_t ;


 TYPE_3__* TryMerge (TYPE_3__*,TYPE_3__*,int ) ;
 TYPE_1__* mapplanes ;

void MergeNodeFaces (node_t *node)
{
 face_t *f1, *f2, *end;
 face_t *merged;
 plane_t *plane;

 plane = &mapplanes[node->planenum];
 merged = ((void*)0);

 for (f1 = node->faces ; f1 ; f1 = f1->next)
 {
  if (f1->merged || f1->split[0] || f1->split[1])
   continue;

  for (f2 = node->faces ; f2 != f1 ; f2=f2->next)
  {
   if (f2->merged || f2->split[0] || f2->split[1])
    continue;
   plane = &mapplanes[f1->planenum];

   merged = TryMerge (f1, f2, plane->normal);
   if (!merged)
    continue;



   for (end = node->faces ; end->next ; end = end->next)
   ;
   merged->next = ((void*)0);
   end->next = merged;
   break;
  }
 }
}
