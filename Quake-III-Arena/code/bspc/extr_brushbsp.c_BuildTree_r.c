
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int planenum; } ;
typedef TYPE_1__ side_t ;
struct TYPE_12__ {int planenum; int contents; struct TYPE_12__** children; int * volume; struct TYPE_12__* parent; TYPE_1__* side; int * brushlist; } ;
typedef TYPE_2__ node_t ;
typedef int bspbrush_t ;


 TYPE_2__* AllocNode () ;
 int CONTENTS_SOLID ;
 int DrawBrushList (int *,TYPE_2__*) ;
 int FreeBrush (int *) ;
 int FreeBrushList (int *) ;
 int LeafNode (TYPE_2__*,int *) ;
 TYPE_1__* SelectSplitSide (int *,TYPE_2__*) ;
 int SplitBrush (int *,int,int **,int **) ;
 int SplitBrushList (int *,TYPE_2__*,int **,int **) ;
 int WindingMemory () ;
 int c_brushmemory ;
 int c_nodememory ;
 int c_nodes ;
 int c_peak_totalbspmemory ;
 int c_solidleafnodes ;
 scalar_t__ create_aas ;
 scalar_t__ drawflag ;
 int numrecurse ;
 int numthreads ;
 int qprintf (char*,int ) ;

node_t *BuildTree_r (node_t *node, bspbrush_t *brushes)
{
 node_t *newnode;
 side_t *bestside;
 int i, totalmem;
 bspbrush_t *children[2];

 qprintf("\r%6d", numrecurse);
 numrecurse++;

 if (numthreads == 1)
 {
  totalmem = WindingMemory() + c_nodememory + c_brushmemory;
  if (totalmem > c_peak_totalbspmemory)
   c_peak_totalbspmemory = totalmem;
  c_nodes++;
 }

 if (drawflag)
  DrawBrushList(brushes, node);


 bestside = SelectSplitSide (brushes, node);
 if (!bestside)
 {

  node->side = ((void*)0);
  node->planenum = -1;
  LeafNode(node, brushes);
  if (node->contents & CONTENTS_SOLID) c_solidleafnodes++;
  if (create_aas)
  {

   FreeBrushList(node->brushlist);
   node->brushlist = ((void*)0);

   if (node->volume)
   {
    FreeBrush(node->volume);
    node->volume = ((void*)0);
   }
  }
  return node;
 }


 node->side = bestside;
 node->planenum = bestside->planenum & ~1;


 SplitBrushList (brushes, node, &children[0], &children[1]);

 FreeBrushList (brushes);


 for (i = 0; i < 2; i++)
 {
  newnode = AllocNode ();
  newnode->parent = node;
  node->children[i] = newnode;
 }


 SplitBrush (node->volume, node->planenum, &node->children[0]->volume,
  &node->children[1]->volume);

 if (create_aas)
 {

  if (node->volume)
  {
   FreeBrush(node->volume);
   node->volume = ((void*)0);
  }
 }

 for (i = 0; i < 2; i++)
 {
  node->children[i] = BuildTree_r(node->children[i], children[i]);
 }

 return node;
}
