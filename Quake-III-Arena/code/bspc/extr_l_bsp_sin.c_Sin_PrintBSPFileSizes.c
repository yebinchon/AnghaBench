
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sin_texinfo_t ;
typedef int sin_lightvalue_t ;
typedef int sin_dvertex_t ;
typedef int sin_dsurfedges ;
typedef int sin_dplane_t ;
typedef int sin_dnode_t ;
typedef int sin_dmodel_t ;
typedef int sin_dleaffaces ;
typedef int sin_dleafbrushes ;
typedef int sin_dleaf_t ;
typedef int sin_dface_t ;
typedef int sin_dedge_t ;
typedef int sin_dbrushside_t ;
typedef int sin_dbrush_t ;


 int Log_Print (char*,...) ;
 int Sin_ParseEntities () ;
 int num_entities ;
 int sin_entdatasize ;
 int sin_lightdatasize ;
 int sin_numbrushes ;
 int sin_numbrushsides ;
 int sin_numedges ;
 int sin_numfaces ;
 int sin_numleafbrushes ;
 int sin_numleaffaces ;
 int sin_numleafs ;
 int sin_numlightinfo ;
 int sin_nummodels ;
 int sin_numnodes ;
 int sin_numplanes ;
 int sin_numsurfedges ;
 int sin_numtexinfo ;
 int sin_numvertexes ;
 int sin_visdatasize ;

void Sin_PrintBSPFileSizes (void)
{
 if (!num_entities)
  Sin_ParseEntities ();

 Log_Print("%6i models       %7i\n"
  ,sin_nummodels, (int)(sin_nummodels*sizeof(sin_dmodel_t)));
 Log_Print("%6i brushes      %7i\n"
  ,sin_numbrushes, (int)(sin_numbrushes*sizeof(sin_dbrush_t)));
 Log_Print("%6i brushsides   %7i\n"
  ,sin_numbrushsides, (int)(sin_numbrushsides*sizeof(sin_dbrushside_t)));
 Log_Print("%6i planes       %7i\n"
  ,sin_numplanes, (int)(sin_numplanes*sizeof(sin_dplane_t)));
 Log_Print("%6i texinfo      %7i\n"
  ,sin_numtexinfo, (int)(sin_numtexinfo*sizeof(sin_texinfo_t)));




 Log_Print("%6i entdata      %7i\n", num_entities, sin_entdatasize);

 Log_Print("\n");

 Log_Print("%6i vertexes     %7i\n"
  ,sin_numvertexes, (int)(sin_numvertexes*sizeof(sin_dvertex_t)));
 Log_Print("%6i nodes        %7i\n"
  ,sin_numnodes, (int)(sin_numnodes*sizeof(sin_dnode_t)));
 Log_Print("%6i faces        %7i\n"
  ,sin_numfaces, (int)(sin_numfaces*sizeof(sin_dface_t)));
 Log_Print("%6i leafs        %7i\n"
  ,sin_numleafs, (int)(sin_numleafs*sizeof(sin_dleaf_t)));
 Log_Print("%6i leaffaces    %7i\n"
  ,sin_numleaffaces, (int)(sin_numleaffaces*sizeof(sin_dleaffaces[0])));
 Log_Print("%6i leafbrushes  %7i\n"
  ,sin_numleafbrushes, (int)(sin_numleafbrushes*sizeof(sin_dleafbrushes[0])));
 Log_Print("%6i surfedges    %7i\n"
  ,sin_numsurfedges, (int)(sin_numsurfedges*sizeof(sin_dsurfedges[0])));
 Log_Print("%6i edges        %7i\n"
  ,sin_numedges, (int)(sin_numedges*sizeof(sin_dedge_t)));
 Log_Print("       lightdata    %7i\n", sin_lightdatasize);
 Log_Print("       visdata      %7i\n", sin_visdatasize);
}
