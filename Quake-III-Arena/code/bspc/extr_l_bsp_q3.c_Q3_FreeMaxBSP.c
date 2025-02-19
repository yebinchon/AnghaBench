
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeMemory (int *) ;
 int * q3_dbrushes ;
 int * q3_dbrushsides ;
 int * q3_dentdata ;
 int * q3_dfogs ;
 int * q3_dleafbrushes ;
 int * q3_dleafs ;
 int * q3_dleafsurfaces ;
 int * q3_dmodels ;
 int * q3_dnodes ;
 int * q3_dplanes ;
 int * q3_drawIndexes ;
 int * q3_drawSurfaces ;
 int * q3_drawVerts ;
 int * q3_dshaders ;
 scalar_t__ q3_entdatasize ;
 int * q3_gridData ;
 int * q3_lightBytes ;
 scalar_t__ q3_numDrawIndexes ;
 scalar_t__ q3_numDrawSurfaces ;
 scalar_t__ q3_numDrawVerts ;
 scalar_t__ q3_numFogs ;
 scalar_t__ q3_numGridPoints ;
 scalar_t__ q3_numLightBytes ;
 scalar_t__ q3_numShaders ;
 scalar_t__ q3_numVisBytes ;
 scalar_t__ q3_numbrushes ;
 scalar_t__ q3_numbrushsides ;
 scalar_t__ q3_numleafbrushes ;
 scalar_t__ q3_numleafs ;
 scalar_t__ q3_numleafsurfaces ;
 scalar_t__ q3_nummodels ;
 scalar_t__ q3_numnodes ;
 scalar_t__ q3_numplanes ;
 int * q3_visBytes ;

void Q3_FreeMaxBSP(void)
{
 if (q3_dmodels) FreeMemory(q3_dmodels);
 q3_dmodels = ((void*)0);
 q3_nummodels = 0;
 if (q3_dshaders) FreeMemory(q3_dshaders);
 q3_dshaders = ((void*)0);
 q3_numShaders = 0;
 if (q3_dentdata) FreeMemory(q3_dentdata);
 q3_dentdata = ((void*)0);
 q3_entdatasize = 0;
 if (q3_dleafs) FreeMemory(q3_dleafs);
 q3_dleafs = ((void*)0);
 q3_numleafs = 0;
 if (q3_dplanes) FreeMemory(q3_dplanes);
 q3_dplanes = ((void*)0);
 q3_numplanes = 0;
 if (q3_dnodes) FreeMemory(q3_dnodes);
 q3_dnodes = ((void*)0);
 q3_numnodes = 0;
 if (q3_dleafsurfaces) FreeMemory(q3_dleafsurfaces);
 q3_dleafsurfaces = ((void*)0);
 q3_numleafsurfaces = 0;
 if (q3_dleafbrushes) FreeMemory(q3_dleafbrushes);
 q3_dleafbrushes = ((void*)0);
 q3_numleafbrushes = 0;
 if (q3_dbrushes) FreeMemory(q3_dbrushes);
 q3_dbrushes = ((void*)0);
 q3_numbrushes = 0;
 if (q3_dbrushsides) FreeMemory(q3_dbrushsides);
 q3_dbrushsides = ((void*)0);
 q3_numbrushsides = 0;
 if (q3_lightBytes) FreeMemory(q3_lightBytes);
 q3_lightBytes = ((void*)0);
 q3_numLightBytes = 0;
 if (q3_gridData) FreeMemory(q3_gridData);
 q3_gridData = ((void*)0);
 q3_numGridPoints = 0;
 if (q3_visBytes) FreeMemory(q3_visBytes);
 q3_visBytes = ((void*)0);
 q3_numVisBytes = 0;
 if (q3_drawVerts) FreeMemory(q3_drawVerts);
 q3_drawVerts = ((void*)0);
 q3_numDrawVerts = 0;
 if (q3_drawIndexes) FreeMemory(q3_drawIndexes);
 q3_drawIndexes = ((void*)0);
 q3_numDrawIndexes = 0;
 if (q3_drawSurfaces) FreeMemory(q3_drawSurfaces);
 q3_drawSurfaces = ((void*)0);
 q3_numDrawSurfaces = 0;
 if (q3_dfogs) FreeMemory(q3_dfogs);
 q3_dfogs = ((void*)0);
 q3_numFogs = 0;
}
