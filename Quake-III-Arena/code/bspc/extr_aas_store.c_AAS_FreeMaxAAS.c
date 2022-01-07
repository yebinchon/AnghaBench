
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ numclusters; int * clusters; scalar_t__ portalindexsize; int * portalindex; scalar_t__ numportals; int * portals; scalar_t__ numnodes; int * nodes; scalar_t__ reachabilitysize; int * reachability; scalar_t__ numareasettings; int * areasettings; scalar_t__ numareas; int * areas; scalar_t__ faceindexsize; int * faceindex; scalar_t__ numfaces; int * faces; scalar_t__ edgeindexsize; int * edgeindex; scalar_t__ numedges; int * edges; scalar_t__ numplanes; int * planes; scalar_t__ numvertexes; int * vertexes; scalar_t__ numbboxes; int * bboxes; } ;


 int FreeMemory (int *) ;
 int Log_Print (char*) ;
 int PrintMemorySize (scalar_t__) ;
 int * aas_edgechain ;
 int * aas_planechain ;
 int * aas_vertexchain ;
 TYPE_1__ aasworld ;
 scalar_t__ allocatedaasmem ;

void AAS_FreeMaxAAS(void)
{

 if (aasworld.bboxes) FreeMemory(aasworld.bboxes);
 aasworld.bboxes = ((void*)0);
 aasworld.numbboxes = 0;

 if (aasworld.vertexes) FreeMemory(aasworld.vertexes);
 aasworld.vertexes = ((void*)0);
 aasworld.numvertexes = 0;

 if (aasworld.planes) FreeMemory(aasworld.planes);
 aasworld.planes = ((void*)0);
 aasworld.numplanes = 0;

 if (aasworld.edges) FreeMemory(aasworld.edges);
 aasworld.edges = ((void*)0);
 aasworld.numedges = 0;

 if (aasworld.edgeindex) FreeMemory(aasworld.edgeindex);
 aasworld.edgeindex = ((void*)0);
 aasworld.edgeindexsize = 0;

 if (aasworld.faces) FreeMemory(aasworld.faces);
 aasworld.faces = ((void*)0);
 aasworld.numfaces = 0;

 if (aasworld.faceindex) FreeMemory(aasworld.faceindex);
 aasworld.faceindex = ((void*)0);
 aasworld.faceindexsize = 0;

 if (aasworld.areas) FreeMemory(aasworld.areas);
 aasworld.areas = ((void*)0);
 aasworld.numareas = 0;

 if (aasworld.areasettings) FreeMemory(aasworld.areasettings);
 aasworld.areasettings = ((void*)0);
 aasworld.numareasettings = 0;

 if (aasworld.reachability) FreeMemory(aasworld.reachability);
 aasworld.reachability = ((void*)0);
 aasworld.reachabilitysize = 0;

 if (aasworld.nodes) FreeMemory(aasworld.nodes);
 aasworld.nodes = ((void*)0);
 aasworld.numnodes = 0;

 if (aasworld.portals) FreeMemory(aasworld.portals);
 aasworld.portals = ((void*)0);
 aasworld.numportals = 0;

 if (aasworld.portalindex) FreeMemory(aasworld.portalindex);
 aasworld.portalindex = ((void*)0);
 aasworld.portalindexsize = 0;

 if (aasworld.clusters) FreeMemory(aasworld.clusters);
 aasworld.clusters = ((void*)0);
 aasworld.numclusters = 0;

 Log_Print("freed ");
 PrintMemorySize(allocatedaasmem);
 Log_Print(" of AAS memory\n");
 allocatedaasmem = 0;

 if (aas_vertexchain) FreeMemory(aas_vertexchain);
 aas_vertexchain = ((void*)0);
 if (aas_planechain) FreeMemory(aas_planechain);
 aas_planechain = ((void*)0);
 if (aas_edgechain) FreeMemory(aas_edgechain);
 aas_edgechain = ((void*)0);
}
