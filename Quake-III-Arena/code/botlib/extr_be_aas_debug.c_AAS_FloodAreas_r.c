
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int areanum; } ;
typedef TYPE_1__ aas_reachability_t ;
struct TYPE_7__ {int frontarea; int backarea; } ;
typedef TYPE_2__ aas_face_t ;
struct TYPE_8__ {int contents; int numreachableareas; int firstreachablearea; } ;
typedef TYPE_3__ aas_areasettings_t ;
struct TYPE_9__ {int numfaces; int firstface; } ;
typedef TYPE_4__ aas_area_t ;
struct TYPE_10__ {TYPE_3__* areasettings; TYPE_1__* reachability; TYPE_2__* faces; int * faceindex; TYPE_4__* areas; } ;


 int AAS_AreaCluster (int) ;
 int AAS_ShowAreaPolygons (int,int,int) ;
 int AREACONTENTS_VIEWPORTAL ;
 TYPE_5__ aasworld ;
 int abs (int ) ;
 int qtrue ;

void AAS_FloodAreas_r(int areanum, int cluster, int *done)
{
 int nextareanum, i, facenum;
 aas_area_t *area;
 aas_face_t *face;
 aas_areasettings_t *settings;
 aas_reachability_t *reach;

 AAS_ShowAreaPolygons(areanum, 1, qtrue);

 area = &aasworld.areas[areanum];
 settings = &aasworld.areasettings[areanum];

 for (i = 0; i < area->numfaces; i++)
 {
  facenum = abs(aasworld.faceindex[area->firstface + i]);
  face = &aasworld.faces[facenum];
  if (face->frontarea == areanum)
   nextareanum = face->backarea;
  else
   nextareanum = face->frontarea;
  if (!nextareanum)
   continue;
  if (done[nextareanum])
   continue;
  done[nextareanum] = qtrue;
  if (aasworld.areasettings[nextareanum].contents & AREACONTENTS_VIEWPORTAL)
   continue;
  if (AAS_AreaCluster(nextareanum) != cluster)
   continue;
  AAS_FloodAreas_r(nextareanum, cluster, done);
 }

 for (i = 0; i < settings->numreachableareas; i++)
 {
  reach = &aasworld.reachability[settings->firstreachablearea + i];
  nextareanum = reach->areanum;
  if (!nextareanum)
   continue;
  if (done[nextareanum])
   continue;
  done[nextareanum] = qtrue;
  if (aasworld.areasettings[nextareanum].contents & AREACONTENTS_VIEWPORTAL)
   continue;
  if (AAS_AreaCluster(nextareanum) != cluster)
   continue;






  AAS_FloodAreas_r(nextareanum, cluster, done);
 }
}
