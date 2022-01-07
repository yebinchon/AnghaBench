
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dshader_t ;
typedef int drawVerts ;
typedef int drawSurfaces ;
typedef int drawIndexes ;
typedef int dplane_t ;
typedef int dnode_t ;
typedef int dmodel_t ;
typedef int dleafsurfaces ;
typedef int dleafbrushes ;
typedef int dleaf_t ;
typedef int dfog_t ;
typedef int dbrushside_t ;
typedef int dbrush_t ;


 int LIGHTMAP_HEIGHT ;
 int LIGHTMAP_WIDTH ;
 int ParseEntities () ;
 int entdatasize ;
 int numDrawIndexes ;
 int numDrawSurfaces ;
 int numDrawVerts ;
 int numFogs ;
 int numLightBytes ;
 int numShaders ;
 int numVisBytes ;
 int num_entities ;
 int numbrushes ;
 int numbrushsides ;
 int numleafbrushes ;
 int numleafs ;
 int numleafsurfaces ;
 int nummodels ;
 int numnodes ;
 int numplanes ;
 int printf (char*,...) ;

void PrintBSPFileSizes( void ) {
 if ( !num_entities ) {
  ParseEntities();
 }

 printf ("%6i models       %7i\n"
  ,nummodels, (int)(nummodels*sizeof(dmodel_t)));
 printf ("%6i shaders      %7i\n"
  ,numShaders, (int)(numShaders*sizeof(dshader_t)));
 printf ("%6i brushes      %7i\n"
  ,numbrushes, (int)(numbrushes*sizeof(dbrush_t)));
 printf ("%6i brushsides   %7i\n"
  ,numbrushsides, (int)(numbrushsides*sizeof(dbrushside_t)));
 printf ("%6i fogs         %7i\n"
  ,numFogs, (int)(numFogs*sizeof(dfog_t)));
 printf ("%6i planes       %7i\n"
  ,numplanes, (int)(numplanes*sizeof(dplane_t)));
 printf ("%6i entdata      %7i\n", num_entities, entdatasize);

 printf ("\n");

 printf ("%6i nodes        %7i\n"
  ,numnodes, (int)(numnodes*sizeof(dnode_t)));
 printf ("%6i leafs        %7i\n"
  ,numleafs, (int)(numleafs*sizeof(dleaf_t)));
 printf ("%6i leafsurfaces %7i\n"
  ,numleafsurfaces, (int)(numleafsurfaces*sizeof(dleafsurfaces[0])));
 printf ("%6i leafbrushes  %7i\n"
  ,numleafbrushes, (int)(numleafbrushes*sizeof(dleafbrushes[0])));
 printf ("%6i drawverts    %7i\n"
  ,numDrawVerts, (int)(numDrawVerts*sizeof(drawVerts[0])));
 printf ("%6i drawindexes  %7i\n"
  ,numDrawIndexes, (int)(numDrawIndexes*sizeof(drawIndexes[0])));
 printf ("%6i drawsurfaces %7i\n"
  ,numDrawSurfaces, (int)(numDrawSurfaces*sizeof(drawSurfaces[0])));

 printf ("%6i lightmaps    %7i\n"
  ,numLightBytes / (LIGHTMAP_WIDTH*LIGHTMAP_HEIGHT*3), numLightBytes );
 printf ("       visibility   %7i\n"
  , numVisBytes );
}
