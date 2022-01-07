
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeMemory (int *) ;
 int Log_Print (char*) ;
 int PrintMemorySize (scalar_t__) ;
 scalar_t__ hl_allocatedbspmem ;
 int * hl_dclipnodes ;
 int * hl_dedges ;
 int * hl_dentdata ;
 int * hl_dfaces ;
 int * hl_dleafs ;
 int * hl_dlightdata ;
 int * hl_dmarksurfaces ;
 int * hl_dmodels ;
 int * hl_dnodes ;
 int * hl_dplanes ;
 int * hl_dsurfedges ;
 int * hl_dtexdata ;
 int * hl_dvertexes ;
 int * hl_dvisdata ;
 scalar_t__ hl_entdatasize ;
 scalar_t__ hl_lightdatasize ;
 scalar_t__ hl_numclipnodes ;
 scalar_t__ hl_numedges ;
 scalar_t__ hl_numfaces ;
 scalar_t__ hl_numleafs ;
 scalar_t__ hl_nummarksurfaces ;
 scalar_t__ hl_nummodels ;
 scalar_t__ hl_numnodes ;
 scalar_t__ hl_numplanes ;
 scalar_t__ hl_numsurfedges ;
 scalar_t__ hl_numtexinfo ;
 scalar_t__ hl_numvertexes ;
 scalar_t__ hl_texdatasize ;
 int * hl_texinfo ;
 scalar_t__ hl_visdatasize ;

void HL_FreeMaxBSP(void)
{

 hl_nummodels = 0;
 FreeMemory(hl_dmodels);
 hl_dmodels = ((void*)0);

 hl_visdatasize = 0;
 FreeMemory(hl_dvisdata);
 hl_dvisdata = ((void*)0);

 hl_lightdatasize = 0;
 FreeMemory(hl_dlightdata);
 hl_dlightdata = ((void*)0);

 hl_texdatasize = 0;
 FreeMemory(hl_dtexdata);
 hl_dtexdata = ((void*)0);

 hl_entdatasize = 0;
 FreeMemory(hl_dentdata);
 hl_dentdata = ((void*)0);

 hl_numleafs = 0;
 FreeMemory(hl_dleafs);
 hl_dleafs = ((void*)0);

 hl_numplanes = 0;
 FreeMemory(hl_dplanes);
 hl_dplanes = ((void*)0);

 hl_numvertexes = 0;
 FreeMemory(hl_dvertexes);
 hl_dvertexes = ((void*)0);

 hl_numnodes = 0;
 FreeMemory(hl_dnodes);
 hl_dnodes = ((void*)0);

 hl_numtexinfo = 0;
 FreeMemory(hl_texinfo);
 hl_texinfo = ((void*)0);

 hl_numfaces = 0;
 FreeMemory(hl_dfaces);
 hl_dfaces = ((void*)0);

 hl_numclipnodes = 0;
 FreeMemory(hl_dclipnodes);
 hl_dclipnodes = ((void*)0);

 hl_numedges = 0;
 FreeMemory(hl_dedges);
 hl_dedges = ((void*)0);

 hl_nummarksurfaces = 0;
 FreeMemory(hl_dmarksurfaces);
 hl_dmarksurfaces = ((void*)0);

 hl_numsurfedges = 0;
 FreeMemory(hl_dsurfedges);
 hl_dsurfedges = ((void*)0);

 Log_Print("freed ");
 PrintMemorySize(hl_allocatedbspmem);
 Log_Print(" of BSP memory\n");
 hl_allocatedbspmem = 0;
}
