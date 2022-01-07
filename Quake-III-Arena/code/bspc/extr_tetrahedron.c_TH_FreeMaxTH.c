
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ numtetrahedrons; int * tetrahedrons; scalar_t__ numtriangles; int * triangles; scalar_t__ numedges; int * edges; scalar_t__ numplanes; int * planes; scalar_t__ numvertexes; int * vertexes; } ;


 int FreeMemory (int *) ;
 TYPE_1__ thworld ;

void TH_FreeMaxTH(void)
{
 if (thworld.vertexes) FreeMemory(thworld.vertexes);
 thworld.vertexes = ((void*)0);
 thworld.numvertexes = 0;
 if (thworld.planes) FreeMemory(thworld.planes);
 thworld.planes = ((void*)0);
 thworld.numplanes = 0;
 if (thworld.edges) FreeMemory(thworld.edges);
 thworld.edges = ((void*)0);
 thworld.numedges = 0;
 if (thworld.triangles) FreeMemory(thworld.triangles);
 thworld.triangles = ((void*)0);
 thworld.numtriangles = 0;
 if (thworld.tetrahedrons) FreeMemory(thworld.tetrahedrons);
 thworld.tetrahedrons = ((void*)0);
 thworld.numtetrahedrons = 0;
}
