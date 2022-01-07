
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int frontarea; int backarea; } ;
typedef TYPE_4__ aas_face_t ;
struct TYPE_11__ {int numfaces; int firstface; } ;
typedef TYPE_5__ aas_area_t ;
struct TYPE_12__ {int numareas; TYPE_3__* areasettings; TYPE_2__* reachability; TYPE_4__* faces; int * faceindex; TYPE_5__* areas; TYPE_1__* clusters; } ;
struct TYPE_9__ {int cluster; int contents; int numreachableareas; int firstreachablearea; int clusterareanum; } ;
struct TYPE_8__ {int areanum; } ;
struct TYPE_7__ {int numareas; } ;


 int AAS_Error (char*,...) ;
 int AAS_UpdatePortal (int,int) ;
 int AREACONTENTS_CLUSTERPORTAL ;
 TYPE_6__ aasworld ;
 int abs (int ) ;
 int nofaceflood ;
 int qfalse ;
 int qtrue ;

int AAS_FloodClusterAreas_r(int areanum, int clusternum)
{
 aas_area_t *area;
 aas_face_t *face;
 int facenum, i;


 if (areanum <= 0 || areanum >= aasworld.numareas)
 {
  AAS_Error("AAS_FloodClusterAreas_r: areanum out of range");
  return qfalse;
 }

 if (aasworld.areasettings[areanum].cluster > 0)
 {
  if (aasworld.areasettings[areanum].cluster == clusternum) return qtrue;



  AAS_Error("cluster %d touched cluster %d at area %d\r\n",
    clusternum, aasworld.areasettings[areanum].cluster, areanum);
  return qfalse;
 }

 if (aasworld.areasettings[areanum].contents & AREACONTENTS_CLUSTERPORTAL)
 {
  return AAS_UpdatePortal(areanum, clusternum);
 }

 aasworld.areasettings[areanum].cluster = clusternum;
 aasworld.areasettings[areanum].clusterareanum =
    aasworld.clusters[clusternum].numareas;

 aasworld.clusters[clusternum].numareas++;

 area = &aasworld.areas[areanum];

 if (!nofaceflood)
 {
  for (i = 0; i < area->numfaces; i++)
  {
   facenum = abs(aasworld.faceindex[area->firstface + i]);
   face = &aasworld.faces[facenum];
   if (face->frontarea == areanum)
   {
    if (face->backarea) if (!AAS_FloodClusterAreas_r(face->backarea, clusternum)) return qfalse;
   }
   else
   {
    if (face->frontarea) if (!AAS_FloodClusterAreas_r(face->frontarea, clusternum)) return qfalse;
   }
  }
 }

 for (i = 0; i < aasworld.areasettings[areanum].numreachableareas; i++)
 {
  if (!aasworld.reachability[
     aasworld.areasettings[areanum].firstreachablearea + i].areanum)
  {
   continue;
  }
  if (!AAS_FloodClusterAreas_r(aasworld.reachability[
    aasworld.areasettings[areanum].firstreachablearea + i].areanum, clusternum)) return qfalse;
 }
 return qtrue;
}
