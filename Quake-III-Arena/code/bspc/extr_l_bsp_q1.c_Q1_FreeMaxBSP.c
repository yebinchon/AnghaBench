
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeMemory (int *) ;
 int Log_Print (char*) ;
 int PrintMemorySize (scalar_t__) ;
 scalar_t__ q1_allocatedbspmem ;
 int * q1_dclipnodes ;
 int * q1_dedges ;
 int * q1_dentdata ;
 int * q1_dfaces ;
 int * q1_dleafs ;
 int * q1_dlightdata ;
 int * q1_dmarksurfaces ;
 int * q1_dmodels ;
 int * q1_dnodes ;
 int * q1_dplanes ;
 int * q1_dsurfedges ;
 int * q1_dtexdata ;
 int * q1_dvertexes ;
 int * q1_dvisdata ;
 scalar_t__ q1_entdatasize ;
 scalar_t__ q1_lightdatasize ;
 scalar_t__ q1_numclipnodes ;
 scalar_t__ q1_numedges ;
 scalar_t__ q1_numfaces ;
 scalar_t__ q1_numleafs ;
 scalar_t__ q1_nummarksurfaces ;
 scalar_t__ q1_nummodels ;
 scalar_t__ q1_numnodes ;
 scalar_t__ q1_numplanes ;
 scalar_t__ q1_numsurfedges ;
 scalar_t__ q1_numtexinfo ;
 scalar_t__ q1_numvertexes ;
 scalar_t__ q1_texdatasize ;
 int * q1_texinfo ;
 scalar_t__ q1_visdatasize ;

void Q1_FreeMaxBSP(void)
{

 q1_nummodels = 0;
 FreeMemory(q1_dmodels);
 q1_dmodels = ((void*)0);

 q1_visdatasize = 0;
 FreeMemory(q1_dvisdata);
 q1_dvisdata = ((void*)0);

 q1_lightdatasize = 0;
 FreeMemory(q1_dlightdata);
 q1_dlightdata = ((void*)0);

 q1_texdatasize = 0;
 FreeMemory(q1_dtexdata);
 q1_dtexdata = ((void*)0);

 q1_entdatasize = 0;
 FreeMemory(q1_dentdata);
 q1_dentdata = ((void*)0);

 q1_numleafs = 0;
 FreeMemory(q1_dleafs);
 q1_dleafs = ((void*)0);

 q1_numplanes = 0;
 FreeMemory(q1_dplanes);
 q1_dplanes = ((void*)0);

 q1_numvertexes = 0;
 FreeMemory(q1_dvertexes);
 q1_dvertexes = ((void*)0);

 q1_numnodes = 0;
 FreeMemory(q1_dnodes);
 q1_dnodes = ((void*)0);

 q1_numtexinfo = 0;
 FreeMemory(q1_texinfo);
 q1_texinfo = ((void*)0);

 q1_numfaces = 0;
 FreeMemory(q1_dfaces);
 q1_dfaces = ((void*)0);

 q1_numclipnodes = 0;
 FreeMemory(q1_dclipnodes);
 q1_dclipnodes = ((void*)0);

 q1_numedges = 0;
 FreeMemory(q1_dedges);
 q1_dedges = ((void*)0);

 q1_nummarksurfaces = 0;
 FreeMemory(q1_dmarksurfaces);
 q1_dmarksurfaces = ((void*)0);

 q1_numsurfedges = 0;
 FreeMemory(q1_dsurfedges);
 q1_dsurfedges = ((void*)0);

 Log_Print("freed ");
 PrintMemorySize(q1_allocatedbspmem);
 Log_Print(" of BSP memory\n");
 q1_allocatedbspmem = 0;
}
