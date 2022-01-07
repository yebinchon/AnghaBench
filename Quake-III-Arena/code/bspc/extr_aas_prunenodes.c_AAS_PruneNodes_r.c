
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__** children; scalar_t__ planenum; TYPE_2__* tmparea; } ;
typedef TYPE_1__ tmp_node_t ;
struct TYPE_7__ {struct TYPE_7__* mergedarea; } ;
typedef TYPE_2__ tmp_area_t ;


 int AAS_FreeTmpNode (TYPE_1__*) ;
 int c_numprunes ;

tmp_node_t *AAS_PruneNodes_r(tmp_node_t *tmpnode)
{
 tmp_area_t *tmparea1, *tmparea2;


 if (!tmpnode) return ((void*)0);

 if (tmpnode->tmparea) return tmpnode;

 tmpnode->children[0] = AAS_PruneNodes_r(tmpnode->children[0]);
 tmpnode->children[1] = AAS_PruneNodes_r(tmpnode->children[1]);

 if (tmpnode->children[0] && tmpnode->children[1] &&
   tmpnode->children[0]->tmparea && tmpnode->children[1]->tmparea)
 {
  tmparea1 = tmpnode->children[0]->tmparea;
  while(tmparea1->mergedarea) tmparea1 = tmparea1->mergedarea;

  tmparea2 = tmpnode->children[1]->tmparea;
  while(tmparea2->mergedarea) tmparea2 = tmparea2->mergedarea;

  if (tmparea1 == tmparea2)
  {
   c_numprunes++;
   tmpnode->tmparea = tmparea1;
   tmpnode->planenum = 0;
   AAS_FreeTmpNode(tmpnode->children[0]);
   AAS_FreeTmpNode(tmpnode->children[1]);
   tmpnode->children[0] = ((void*)0);
   tmpnode->children[1] = ((void*)0);
   return tmpnode;
  }
 }

 if (!tmpnode->children[0] && !tmpnode->children[1])
 {
  c_numprunes++;
  AAS_FreeTmpNode(tmpnode);
  return ((void*)0);
 }

 return tmpnode;
}
