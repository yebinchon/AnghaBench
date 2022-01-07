
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ planenum; struct TYPE_7__* volume; struct TYPE_7__* brushlist; struct TYPE_7__* next; struct TYPE_7__** children; } ;
typedef TYPE_1__ node_t ;
typedef TYPE_1__ bspbrush_t ;


 int FreeBrush (TYPE_1__*) ;
 int FreeMemory (TYPE_1__*) ;
 scalar_t__ MemorySize (TYPE_1__*) ;
 scalar_t__ PLANENUM_LEAF ;
 int c_nodes ;
 int freedtreemem ;
 int numthreads ;

void Tree_Free_r (node_t *node)
{

 bspbrush_t *brush, *nextbrush;


 if (node->planenum != PLANENUM_LEAF)
 {
  Tree_Free_r (node->children[0]);
  Tree_Free_r (node->children[1]);
 }


 for (brush = node->brushlist; brush; brush = nextbrush)
 {
  nextbrush = brush->next;



  FreeBrush(brush);
 }
 node->brushlist = ((void*)0);
 if (node->volume)
 {



  FreeBrush (node->volume);
 }

 if (numthreads == 1) c_nodes--;



 FreeMemory(node);
}
