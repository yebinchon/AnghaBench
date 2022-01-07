
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_6__ {int numedges; TYPE_1__* edges; } ;
struct TYPE_5__ {int max_edges; } ;
struct TYPE_4__ {int* v; } ;


 int AAS_AddEdgeToHash (int) ;
 scalar_t__ AAS_FindHashedEdge (int,int,int*) ;
 int AAS_GetVertex (int ,int*) ;
 int Error (char*,int) ;
 TYPE_3__ aasworld ;
 TYPE_2__ max_aas ;

qboolean AAS_GetEdge(vec3_t v1, vec3_t v2, int *edgenum)
{
 int v1num, v2num;
 qboolean found;


 if (aasworld.numedges == 0) aasworld.numedges = 1;

 found = AAS_GetVertex(v1, &v1num);
 found &= AAS_GetVertex(v2, &v2num);

 if (v1num == -1 || v2num == -1)
 {
  *edgenum = 0;
  return 1;
 }

 if (v1num == v2num)
 {
  *edgenum = 0;
  return 1;
 }

 if (found)
 {



  int i;
  for (i = 1; i < aasworld.numedges; i++)
  {
   if (aasworld.edges[i].v[0] == v1num)
   {
    if (aasworld.edges[i].v[1] == v2num)
    {
     *edgenum = i;
     return 1;
    }
   }
   else if (aasworld.edges[i].v[1] == v1num)
   {
    if (aasworld.edges[i].v[0] == v2num)
    {

     *edgenum = -i;
     return 1;
    }
   }
  }

 }
 if (aasworld.numedges >= max_aas.max_edges)
 {
  Error("AAS_MAX_EDGES = %d", max_aas.max_edges);
 }
 aasworld.edges[aasworld.numedges].v[0] = v1num;
 aasworld.edges[aasworld.numedges].v[1] = v2num;
 *edgenum = aasworld.numedges;



 aasworld.numedges++;
 return 0;
}
