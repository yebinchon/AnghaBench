
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int cluster; void* nummarksurfaces; scalar_t__ firstmarksurface; void* area; void** maxs; void** mins; struct TYPE_11__** children; int contents; scalar_t__ plane; } ;
typedef TYPE_1__ mnode_t ;
struct TYPE_12__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_2__ lump_t ;
struct TYPE_13__ {int * children; int planeNum; int * maxs; int * mins; } ;
typedef TYPE_3__ dnode_t ;
struct TYPE_14__ {int numLeafSurfaces; int firstLeafSurface; int area; int cluster; int * maxs; int * mins; } ;
typedef TYPE_4__ dleaf_t ;
struct TYPE_16__ {TYPE_1__* (* Hunk_Alloc ) (int,int ) ;int (* Error ) (int ,char*,int ) ;} ;
struct TYPE_15__ {int numnodes; int numDecisionNodes; int numClusters; TYPE_1__* nodes; scalar_t__ marksurfaces; scalar_t__ planes; int name; } ;


 int CONTENTS_NODE ;
 int ERR_DROP ;
 void* LittleLong (int ) ;
 int R_SetParent (TYPE_1__*,int *) ;
 scalar_t__ fileBase ;
 int h_low ;
 TYPE_7__ ri ;
 TYPE_6__ s_worldData ;
 int stub1 (int ,char*,int ) ;
 TYPE_1__* stub2 (int,int ) ;

__attribute__((used)) static void R_LoadNodesAndLeafs (lump_t *nodeLump, lump_t *leafLump) {
 int i, j, p;
 dnode_t *in;
 dleaf_t *inLeaf;
 mnode_t *out;
 int numNodes, numLeafs;

 in = (void *)(fileBase + nodeLump->fileofs);
 if (nodeLump->filelen % sizeof(dnode_t) ||
  leafLump->filelen % sizeof(dleaf_t) ) {
  ri.Error (ERR_DROP, "LoadMap: funny lump size in %s",s_worldData.name);
 }
 numNodes = nodeLump->filelen / sizeof(dnode_t);
 numLeafs = leafLump->filelen / sizeof(dleaf_t);

 out = ri.Hunk_Alloc ( (numNodes + numLeafs) * sizeof(*out), h_low);

 s_worldData.nodes = out;
 s_worldData.numnodes = numNodes + numLeafs;
 s_worldData.numDecisionNodes = numNodes;


 for ( i=0 ; i<numNodes; i++, in++, out++)
 {
  for (j=0 ; j<3 ; j++)
  {
   out->mins[j] = LittleLong (in->mins[j]);
   out->maxs[j] = LittleLong (in->maxs[j]);
  }

  p = LittleLong(in->planeNum);
  out->plane = s_worldData.planes + p;

  out->contents = CONTENTS_NODE;

  for (j=0 ; j<2 ; j++)
  {
   p = LittleLong (in->children[j]);
   if (p >= 0)
    out->children[j] = s_worldData.nodes + p;
   else
    out->children[j] = s_worldData.nodes + numNodes + (-1 - p);
  }
 }


 inLeaf = (void *)(fileBase + leafLump->fileofs);
 for ( i=0 ; i<numLeafs ; i++, inLeaf++, out++)
 {
  for (j=0 ; j<3 ; j++)
  {
   out->mins[j] = LittleLong (inLeaf->mins[j]);
   out->maxs[j] = LittleLong (inLeaf->maxs[j]);
  }

  out->cluster = LittleLong(inLeaf->cluster);
  out->area = LittleLong(inLeaf->area);

  if ( out->cluster >= s_worldData.numClusters ) {
   s_worldData.numClusters = out->cluster + 1;
  }

  out->firstmarksurface = s_worldData.marksurfaces +
   LittleLong(inLeaf->firstLeafSurface);
  out->nummarksurfaces = LittleLong(inLeaf->numLeafSurfaces);
 }


 R_SetParent (s_worldData.nodes, ((void*)0));
}
