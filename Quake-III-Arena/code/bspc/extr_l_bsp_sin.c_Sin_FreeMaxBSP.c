
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeMemory (int *) ;
 int Log_Print (char*) ;
 int PrintMemorySize (scalar_t__) ;
 scalar_t__ sin_allocatedbspmem ;
 int * sin_dareaportals ;
 int * sin_dareas ;
 int * sin_dbrushes ;
 int * sin_dbrushsides ;
 int * sin_dedges ;
 int * sin_dentdata ;
 int * sin_dfaces ;
 int * sin_dleafbrushes ;
 int * sin_dleaffaces ;
 int * sin_dleafs ;
 int * sin_dlightdata ;
 int * sin_dmodels ;
 int * sin_dnodes ;
 int * sin_dplanes ;
 int * sin_dsurfedges ;
 int * sin_dvertexes ;
 int * sin_dvis ;
 int * sin_dvisdata ;
 scalar_t__ sin_entdatasize ;
 scalar_t__ sin_lightdatasize ;
 int * sin_lightinfo ;
 scalar_t__ sin_numareaportals ;
 scalar_t__ sin_numareas ;
 scalar_t__ sin_numbrushes ;
 scalar_t__ sin_numbrushsides ;
 scalar_t__ sin_numedges ;
 scalar_t__ sin_numfaces ;
 scalar_t__ sin_numleafbrushes ;
 scalar_t__ sin_numleaffaces ;
 scalar_t__ sin_numleafs ;
 scalar_t__ sin_numlightinfo ;
 scalar_t__ sin_nummodels ;
 scalar_t__ sin_numnodes ;
 scalar_t__ sin_numplanes ;
 scalar_t__ sin_numsurfedges ;
 scalar_t__ sin_numtexinfo ;
 scalar_t__ sin_numvertexes ;
 int * sin_texinfo ;
 scalar_t__ sin_visdatasize ;

void Sin_FreeMaxBSP(void)
{

 sin_nummodels = 0;
 FreeMemory(sin_dmodels);
 sin_dmodels = ((void*)0);

 sin_visdatasize = 0;
 FreeMemory(sin_dvisdata);
 sin_dvisdata = ((void*)0);
 sin_dvis = ((void*)0);

 sin_lightdatasize = 0;
 FreeMemory(sin_dlightdata);
 sin_dlightdata = ((void*)0);

 sin_entdatasize = 0;
 FreeMemory(sin_dentdata);
 sin_dentdata = ((void*)0);

 sin_numleafs = 0;
 FreeMemory(sin_dleafs);
 sin_dleafs = ((void*)0);

 sin_numplanes = 0;
 FreeMemory(sin_dplanes);
 sin_dplanes = ((void*)0);

 sin_numvertexes = 0;
 FreeMemory(sin_dvertexes);
 sin_dvertexes = ((void*)0);

 sin_numnodes = 0;
 FreeMemory(sin_dnodes);
 sin_dnodes = ((void*)0);

 sin_numtexinfo = 0;
 FreeMemory(sin_texinfo);
 sin_texinfo = ((void*)0);

 sin_numfaces = 0;
 FreeMemory(sin_dfaces);
 sin_dfaces = ((void*)0);

 sin_numedges = 0;
 FreeMemory(sin_dedges);
 sin_dedges = ((void*)0);

 sin_numleaffaces = 0;
 FreeMemory(sin_dleaffaces);
 sin_dleaffaces = ((void*)0);

 sin_numleafbrushes = 0;
 FreeMemory(sin_dleafbrushes);
 sin_dleafbrushes = ((void*)0);

 sin_numsurfedges = 0;
 FreeMemory(sin_dsurfedges);
 sin_dsurfedges = ((void*)0);

 sin_numbrushes = 0;
 FreeMemory(sin_dbrushes);
 sin_dbrushes = ((void*)0);

 sin_numbrushsides = 0;
 FreeMemory(sin_dbrushsides);
 sin_dbrushsides = ((void*)0);

 sin_numareas = 0;
 FreeMemory(sin_dareas);
 sin_dareas = ((void*)0);

 sin_numareaportals = 0;
 FreeMemory(sin_dareaportals);
 sin_dareaportals = ((void*)0);

 sin_numlightinfo = 0;
 FreeMemory(sin_lightinfo);
 sin_lightinfo = ((void*)0);

 Log_Print("freed ");
 PrintMemorySize(sin_allocatedbspmem);
 Log_Print(" of BSP memory\n");
 sin_allocatedbspmem = 0;
}
