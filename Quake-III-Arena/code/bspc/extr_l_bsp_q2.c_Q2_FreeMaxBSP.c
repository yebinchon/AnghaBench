
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeMemory (int *) ;
 int Log_Print (char*) ;
 int PrintMemorySize (scalar_t__) ;
 scalar_t__ allocatedbspmem ;
 int * dareaportals ;
 int * dareas ;
 int * dbrushes ;
 int * dbrushsides ;
 int * dedges ;
 int * dentdata ;
 int * dfaces ;
 int * dleafbrushes ;
 int * dleaffaces ;
 int * dleafs ;
 int * dlightdata ;
 int * dmodels ;
 int * dnodes ;
 int * dplanes ;
 int * dsurfedges ;
 int * dvertexes ;
 int * dvis ;
 int * dvisdata ;
 scalar_t__ entdatasize ;
 scalar_t__ lightdatasize ;
 scalar_t__ numareaportals ;
 scalar_t__ numareas ;
 scalar_t__ numbrushes ;
 scalar_t__ numbrushsides ;
 scalar_t__ numedges ;
 scalar_t__ numfaces ;
 scalar_t__ numleafbrushes ;
 scalar_t__ numleaffaces ;
 scalar_t__ numleafs ;
 scalar_t__ nummodels ;
 scalar_t__ numnodes ;
 scalar_t__ numplanes ;
 scalar_t__ numsurfedges ;
 scalar_t__ numvertexes ;
 scalar_t__ visdatasize ;

void Q2_FreeMaxBSP(void)
{

 nummodels = 0;
 FreeMemory(dmodels);
 dmodels = ((void*)0);

 visdatasize = 0;
 FreeMemory(dvisdata);
 dvisdata = ((void*)0);
 dvis = ((void*)0);

 lightdatasize = 0;
 FreeMemory(dlightdata);
 dlightdata = ((void*)0);

 entdatasize = 0;
 FreeMemory(dentdata);
 dentdata = ((void*)0);

 numleafs = 0;
 FreeMemory(dleafs);
 dleafs = ((void*)0);

 numplanes = 0;
 FreeMemory(dplanes);
 dplanes = ((void*)0);

 numvertexes = 0;
 FreeMemory(dvertexes);
 dvertexes = ((void*)0);

 numnodes = 0;
 FreeMemory(dnodes);
 dnodes = ((void*)0);







 numfaces = 0;
 FreeMemory(dfaces);
 dfaces = ((void*)0);

 numedges = 0;
 FreeMemory(dedges);
 dedges = ((void*)0);

 numleaffaces = 0;
 FreeMemory(dleaffaces);
 dleaffaces = ((void*)0);

 numleafbrushes = 0;
 FreeMemory(dleafbrushes);
 dleafbrushes = ((void*)0);

 numsurfedges = 0;
 FreeMemory(dsurfedges);
 dsurfedges = ((void*)0);

 numbrushes = 0;
 FreeMemory(dbrushes);
 dbrushes = ((void*)0);

 numbrushsides = 0;
 FreeMemory(dbrushsides);
 dbrushsides = ((void*)0);

 numareas = 0;
 FreeMemory(dareas);
 dareas = ((void*)0);

 numareaportals = 0;
 FreeMemory(dareaportals);
 dareaportals = ((void*)0);

 Log_Print("freed ");
 PrintMemorySize(allocatedbspmem);
 Log_Print(" of BSP memory\n");
 allocatedbspmem = 0;
}
