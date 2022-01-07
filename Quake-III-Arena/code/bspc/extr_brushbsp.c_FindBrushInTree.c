
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ planenum; struct TYPE_6__** children; TYPE_3__* brushlist; } ;
typedef TYPE_2__ node_t ;
struct TYPE_7__ {TYPE_1__* original; struct TYPE_7__* next; } ;
typedef TYPE_3__ bspbrush_t ;
struct TYPE_5__ {int brushnum; } ;


 int Log_Print (char*) ;
 scalar_t__ PLANENUM_LEAF ;

void FindBrushInTree (node_t *node, int brushnum)
{
 bspbrush_t *b;

 if (node->planenum == PLANENUM_LEAF)
 {
  for (b=node->brushlist ; b ; b=b->next)
   if (b->original->brushnum == brushnum)
    Log_Print ("here\n");
  return;
 }
 FindBrushInTree(node->children[0], brushnum);
 FindBrushInTree(node->children[1], brushnum);
}
