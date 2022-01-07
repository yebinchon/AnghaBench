
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_22__ {int firstface; int numfaces; int headnode; void** origin; void** maxs; void** mins; } ;
typedef TYPE_1__ sin_dmodel_t ;
typedef scalar_t__ qboolean ;
struct TYPE_29__ {int contents; void* numleafbrushes; void* firstleafbrush; void* numleaffaces; void* firstleafface; void** maxs; void** mins; void* area; void* cluster; } ;
struct TYPE_28__ {int planenum; int* children; void* numfaces; void* firstface; void** maxs; void** mins; } ;
struct TYPE_27__ {int type; void* dist; void** normal; } ;
struct TYPE_26__ {void** point; } ;
struct TYPE_25__ {int numclusters; int** bitofs; } ;
struct TYPE_24__ {int value; void* directstyle; void* directangle; void* direct; void** color; } ;
struct TYPE_23__ {int trans_angle; int flags; int value; int nexttexinfo; void* restitution; void* friction; void* translucence; void* nonlit; void* animtime; void* trans_mag; void*** vecs; } ;
struct TYPE_21__ {int portalnum; int otherarea; } ;
struct TYPE_20__ {int numareaportals; int firstareaportal; } ;
struct TYPE_19__ {int firstside; int numsides; int contents; } ;
struct TYPE_18__ {int lightinfo; void* texinfo; void* planenum; } ;
struct TYPE_17__ {void** v; } ;
struct TYPE_16__ {int lightinfo; int lightofs; int firstedge; void* numedges; void* side; void* planenum; void* texinfo; } ;


 void* LittleFloat (void*) ;
 void* LittleLong (int) ;
 void* LittleShort (void*) ;
 int LittleUnsigned (int) ;
 void* LittleUnsignedShort (void*) ;
 TYPE_15__* sin_dareaportals ;
 TYPE_14__* sin_dareas ;
 TYPE_13__* sin_dbrushes ;
 TYPE_12__* sin_dbrushsides ;
 TYPE_11__* sin_dedges ;
 TYPE_10__* sin_dfaces ;
 void** sin_dleafbrushes ;
 void** sin_dleaffaces ;
 TYPE_9__* sin_dleafs ;
 TYPE_1__* sin_dmodels ;
 TYPE_7__* sin_dnodes ;
 TYPE_6__* sin_dplanes ;
 int* sin_dsurfedges ;
 TYPE_5__* sin_dvertexes ;
 TYPE_4__* sin_dvis ;
 TYPE_3__* sin_lightinfo ;
 int sin_numareaportals ;
 int sin_numareas ;
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
 TYPE_2__* sin_texinfo ;

void Sin_SwapBSPFile (qboolean todisk)
{
 int i, j;
 sin_dmodel_t *d;



 for (i=0 ; i<sin_nummodels ; i++)
 {
  d = &sin_dmodels[i];

  d->firstface = LittleLong (d->firstface);
  d->numfaces = LittleLong (d->numfaces);
  d->headnode = LittleLong (d->headnode);

  for (j=0 ; j<3 ; j++)
  {
   d->mins[j] = LittleFloat(d->mins[j]);
   d->maxs[j] = LittleFloat(d->maxs[j]);
   d->origin[j] = LittleFloat(d->origin[j]);
  }
 }




 for (i=0 ; i<sin_numvertexes ; i++)
 {
  for (j=0 ; j<3 ; j++)
   sin_dvertexes[i].point[j] = LittleFloat (sin_dvertexes[i].point[j]);
 }




 for (i=0 ; i<sin_numplanes ; i++)
 {
  for (j=0 ; j<3 ; j++)
   sin_dplanes[i].normal[j] = LittleFloat (sin_dplanes[i].normal[j]);
  sin_dplanes[i].dist = LittleFloat (sin_dplanes[i].dist);
  sin_dplanes[i].type = LittleLong (sin_dplanes[i].type);
 }




 for (i = 0; i < sin_numtexinfo; i++)
 {
  for (j=0 ; j<8 ; j++)
   sin_texinfo[i].vecs[0][j] = LittleFloat (sin_texinfo[i].vecs[0][j]);
  sin_texinfo[i].value = LittleLong (sin_texinfo[i].value);
  sin_texinfo[i].flags = LittleLong (sin_texinfo[i].flags);

  sin_texinfo[i].nexttexinfo = LittleLong (sin_texinfo[i].nexttexinfo);
 }
 for (i=0 ; i<sin_numfaces ; i++)
 {
  sin_dfaces[i].texinfo = LittleShort (sin_dfaces[i].texinfo);




  sin_dfaces[i].planenum = LittleShort (sin_dfaces[i].planenum);

  sin_dfaces[i].side = LittleShort (sin_dfaces[i].side);
  sin_dfaces[i].lightofs = LittleLong (sin_dfaces[i].lightofs);
  sin_dfaces[i].firstedge = LittleLong (sin_dfaces[i].firstedge);
  sin_dfaces[i].numedges = LittleShort (sin_dfaces[i].numedges);
 }




 for (i=0 ; i<sin_numnodes ; i++)
 {
  sin_dnodes[i].planenum = LittleLong (sin_dnodes[i].planenum);
  for (j=0 ; j<3 ; j++)
  {
   sin_dnodes[i].mins[j] = LittleShort (sin_dnodes[i].mins[j]);
   sin_dnodes[i].maxs[j] = LittleShort (sin_dnodes[i].maxs[j]);
  }
  sin_dnodes[i].children[0] = LittleLong (sin_dnodes[i].children[0]);
  sin_dnodes[i].children[1] = LittleLong (sin_dnodes[i].children[1]);




  sin_dnodes[i].firstface = LittleShort (sin_dnodes[i].firstface);
  sin_dnodes[i].numfaces = LittleShort (sin_dnodes[i].numfaces);

 }




 for (i=0 ; i<sin_numleafs ; i++)
 {
  sin_dleafs[i].contents = LittleLong (sin_dleafs[i].contents);
  sin_dleafs[i].cluster = LittleShort (sin_dleafs[i].cluster);
  sin_dleafs[i].area = LittleShort (sin_dleafs[i].area);
  for (j=0 ; j<3 ; j++)
  {
   sin_dleafs[i].mins[j] = LittleShort (sin_dleafs[i].mins[j]);
   sin_dleafs[i].maxs[j] = LittleShort (sin_dleafs[i].maxs[j]);
  }






  sin_dleafs[i].firstleafface = LittleShort (sin_dleafs[i].firstleafface);
  sin_dleafs[i].numleaffaces = LittleShort (sin_dleafs[i].numleaffaces);
  sin_dleafs[i].firstleafbrush = LittleShort (sin_dleafs[i].firstleafbrush);
  sin_dleafs[i].numleafbrushes = LittleShort (sin_dleafs[i].numleafbrushes);

 }




 for (i=0 ; i<sin_numleaffaces ; i++)
  sin_dleaffaces[i] = LittleShort (sin_dleaffaces[i]);




 for (i=0 ; i<sin_numleafbrushes ; i++)
  sin_dleafbrushes[i] = LittleShort (sin_dleafbrushes[i]);




 for (i=0 ; i<sin_numsurfedges ; i++)
  sin_dsurfedges[i] = LittleLong (sin_dsurfedges[i]);




 for (i=0 ; i<sin_numedges ; i++)
 {




  sin_dedges[i].v[0] = LittleShort (sin_dedges[i].v[0]);
  sin_dedges[i].v[1] = LittleShort (sin_dedges[i].v[1]);

 }




 for (i=0 ; i<sin_numbrushes ; i++)
 {
  sin_dbrushes[i].firstside = LittleLong (sin_dbrushes[i].firstside);
  sin_dbrushes[i].numsides = LittleLong (sin_dbrushes[i].numsides);
  sin_dbrushes[i].contents = LittleLong (sin_dbrushes[i].contents);
 }




 for (i=0 ; i<sin_numareas ; i++)
 {
  sin_dareas[i].numareaportals = LittleLong (sin_dareas[i].numareaportals);
  sin_dareas[i].firstareaportal = LittleLong (sin_dareas[i].firstareaportal);
 }




 for (i=0 ; i<sin_numareaportals ; i++)
 {
  sin_dareaportals[i].portalnum = LittleLong (sin_dareaportals[i].portalnum);
  sin_dareaportals[i].otherarea = LittleLong (sin_dareaportals[i].otherarea);
 }




 for (i=0 ; i<sin_numbrushsides ; i++)
 {



  sin_dbrushsides[i].planenum = LittleShort (sin_dbrushsides[i].planenum);

  sin_dbrushsides[i].texinfo = LittleShort (sin_dbrushsides[i].texinfo);



 }




 if (todisk)
  j = sin_dvis->numclusters;
 else
  j = LittleLong(sin_dvis->numclusters);
 sin_dvis->numclusters = LittleLong (sin_dvis->numclusters);
 for (i=0 ; i<j ; i++)
 {
  sin_dvis->bitofs[i][0] = LittleLong (sin_dvis->bitofs[i][0]);
  sin_dvis->bitofs[i][1] = LittleLong (sin_dvis->bitofs[i][1]);
 }
}
