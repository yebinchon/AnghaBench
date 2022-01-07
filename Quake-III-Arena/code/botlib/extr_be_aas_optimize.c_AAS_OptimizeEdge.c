
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* edgeoptimizeindex; size_t numedges; size_t* vertexoptimizeindex; size_t numvertexes; int * vertexes; TYPE_2__* edges; } ;
typedef TYPE_1__ optimized_t ;
struct TYPE_7__ {size_t* v; } ;
typedef TYPE_2__ aas_edge_t ;
struct TYPE_8__ {int * vertexes; TYPE_2__* edges; } ;


 int AAS_KeepEdge (TYPE_2__*) ;
 int VectorCopy (int ,int ) ;
 TYPE_3__ aasworld ;
 size_t abs (int) ;

int AAS_OptimizeEdge(optimized_t *optimized, int edgenum)
{
 int i, optedgenum;
 aas_edge_t *edge, *optedge;

 edge = &aasworld.edges[abs(edgenum)];
 if (!AAS_KeepEdge(edge)) return 0;

 optedgenum = optimized->edgeoptimizeindex[abs(edgenum)];
 if (optedgenum)
 {

  if (edgenum > 0) return optedgenum;
  else return -optedgenum;
 }

 optedge = &optimized->edges[optimized->numedges];

 for (i = 0; i < 2; i++)
 {
  if (optimized->vertexoptimizeindex[edge->v[i]])
  {
   optedge->v[i] = optimized->vertexoptimizeindex[edge->v[i]];
  }
  else
  {
   VectorCopy(aasworld.vertexes[edge->v[i]], optimized->vertexes[optimized->numvertexes]);
   optedge->v[i] = optimized->numvertexes;
   optimized->vertexoptimizeindex[edge->v[i]] = optimized->numvertexes;
   optimized->numvertexes++;
  }
 }
 optimized->edgeoptimizeindex[abs(edgenum)] = optimized->numedges;
 optedgenum = optimized->numedges;
 optimized->numedges++;

 if (edgenum > 0) return optedgenum;
 else return -optedgenum;
}
