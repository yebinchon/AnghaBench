
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_7__** face; TYPE_1__* onnode; TYPE_3__** nodes; struct TYPE_10__** next; } ;
typedef TYPE_2__ portal_t ;
struct TYPE_11__ {scalar_t__ planenum; int contents; TYPE_2__* portals; struct TYPE_11__** children; } ;
typedef TYPE_3__ node_t ;
struct TYPE_12__ {struct TYPE_12__* next; } ;
struct TYPE_9__ {TYPE_7__* faces; } ;


 int CONTENTS_SOLID ;
 TYPE_7__* FaceFromPortal (TYPE_2__*,int) ;
 int MergeNodeFaces (TYPE_3__*) ;
 scalar_t__ PLANENUM_LEAF ;
 int SubdivideNodeFaces (TYPE_3__*) ;
 int c_nodefaces ;
 int nomerge ;
 int nosubdiv ;

void MakeFaces_r (node_t *node)
{
 portal_t *p;
 int s;


 if (node->planenum != PLANENUM_LEAF)
 {
  MakeFaces_r (node->children[0]);
  MakeFaces_r (node->children[1]);


  if (!nomerge)
   MergeNodeFaces (node);
  if (!nosubdiv)
   SubdivideNodeFaces (node);

  return;
 }


 if (node->contents & CONTENTS_SOLID)
  return;


 for (p=node->portals ; p ; p = p->next[s])
 {
  s = (p->nodes[1] == node);

  p->face[s] = FaceFromPortal (p, s);
  if (p->face[s])
  {
   c_nodefaces++;
   p->face[s]->next = p->onnode->faces;
   p->onnode->faces = p->face[s];
  }
 }
}
