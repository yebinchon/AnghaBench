
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * v; } ;
typedef TYPE_1__ aas_edge_t ;
struct TYPE_4__ {TYPE_1__* edges; } ;


 int AAS_HashEdge (int ,int ) ;
 int* aas_edgechain ;
 int* aas_hashedges ;
 TYPE_2__ aasworld ;

void AAS_AddEdgeToHash(int edgenum)
{
 int hash;
 aas_edge_t *edge;

 edge = &aasworld.edges[edgenum];

 hash = AAS_HashEdge(edge->v[0], edge->v[1]);

 aas_edgechain[edgenum] = aas_hashedges[hash];
 aas_hashedges[hash] = edgenum;
}
