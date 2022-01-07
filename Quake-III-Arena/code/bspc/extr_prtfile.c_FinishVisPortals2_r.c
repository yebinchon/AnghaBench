
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ planenum; struct TYPE_5__** children; } ;
typedef TYPE_1__ node_t ;


 int MakeNodePortal (TYPE_1__*) ;
 scalar_t__ PLANENUM_LEAF ;
 int SplitNodePortals (TYPE_1__*) ;

void FinishVisPortals2_r (node_t *node)
{
 if (node->planenum == PLANENUM_LEAF)
  return;

 MakeNodePortal (node);
 SplitNodePortals (node);

 FinishVisPortals2_r (node->children[0]);
 FinishVisPortals2_r (node->children[1]);
}
