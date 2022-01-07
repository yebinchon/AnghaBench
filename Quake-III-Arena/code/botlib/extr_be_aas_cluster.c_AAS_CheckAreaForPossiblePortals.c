
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int numareafrontfaces ;
typedef int numareabackfaces ;
struct TYPE_6__ {int faceflags; int frontarea; int backarea; int planenum; int numedges; int firstedge; } ;
typedef TYPE_2__ aas_face_t ;
struct TYPE_7__ {int numfaces; int firstface; } ;
typedef TYPE_3__ aas_area_t ;
struct TYPE_8__ {TYPE_1__* areasettings; int * edgeindex; TYPE_2__* faces; int * faceindex; TYPE_3__* areas; } ;
struct TYPE_5__ {int contents; int areaflags; } ;


 int AAS_ConnectedAreas (int*,int) ;
 int AAS_GetAdjacentAreasWithLessPresenceTypes_r (int*,int ,int) ;
 int AREACONTENTS_CLUSTERPORTAL ;
 int AREACONTENTS_ROUTEPORTAL ;
 int AREA_GROUNDED ;
 int Com_Memset (int*,int ,int) ;
 int FACE_SOLID ;
 int Log_Write (char*,int) ;
 int MAX_PORTALAREAS ;
 TYPE_4__ aasworld ;
 int abs (int ) ;

int AAS_CheckAreaForPossiblePortals(int areanum)
{
 int i, j, k, fen, ben, frontedgenum, backedgenum, facenum;
 int areanums[MAX_PORTALAREAS], numareas, otherareanum;
 int numareafrontfaces[MAX_PORTALAREAS], numareabackfaces[MAX_PORTALAREAS];
 int frontfacenums[MAX_PORTALAREAS], backfacenums[MAX_PORTALAREAS];
 int numfrontfaces, numbackfaces;
 int frontareanums[MAX_PORTALAREAS], backareanums[MAX_PORTALAREAS];
 int numfrontareas, numbackareas;
 int frontplanenum, backplanenum, faceplanenum;
 aas_area_t *area;
 aas_face_t *frontface, *backface, *face;


 if (aasworld.areasettings[areanum].contents & AREACONTENTS_CLUSTERPORTAL) return 0;

 if (!(aasworld.areasettings[areanum].areaflags & AREA_GROUNDED)) return 0;

 Com_Memset(numareafrontfaces, 0, sizeof(numareafrontfaces));
 Com_Memset(numareabackfaces, 0, sizeof(numareabackfaces));
 numareas = numfrontfaces = numbackfaces = 0;
 numfrontareas = numbackareas = 0;
 frontplanenum = backplanenum = -1;

 numareas = AAS_GetAdjacentAreasWithLessPresenceTypes_r(areanums, 0, areanum);

 for (i = 0; i < numareas; i++)
 {
  area = &aasworld.areas[areanums[i]];
  for (j = 0; j < area->numfaces; j++)
  {
   facenum = abs(aasworld.faceindex[area->firstface + j]);
   face = &aasworld.faces[facenum];

   if (face->faceflags & FACE_SOLID) continue;

   for (k = 0; k < numareas; k++)
   {
    if (k == i) continue;
    if (face->frontarea == areanums[k] || face->backarea == areanums[k]) break;
   }

   if (k != numareas) continue;

   if (face->frontarea == areanums[i]) otherareanum = face->backarea;
   else otherareanum = face->frontarea;

   if (aasworld.areasettings[otherareanum].contents & AREACONTENTS_CLUSTERPORTAL) return 0;

   faceplanenum = face->planenum & ~1;

   if (frontplanenum < 0 || faceplanenum == frontplanenum)
   {
    frontplanenum = faceplanenum;
    frontfacenums[numfrontfaces++] = facenum;
    for (k = 0; k < numfrontareas; k++)
    {
     if (frontareanums[k] == otherareanum) break;
    }
    if (k == numfrontareas) frontareanums[numfrontareas++] = otherareanum;
    numareafrontfaces[i]++;
   }
   else if (backplanenum < 0 || faceplanenum == backplanenum)
   {
    backplanenum = faceplanenum;
    backfacenums[numbackfaces++] = facenum;
    for (k = 0; k < numbackareas; k++)
    {
     if (backareanums[k] == otherareanum) break;
    }
    if (k == numbackareas) backareanums[numbackareas++] = otherareanum;
    numareabackfaces[i]++;
   }
   else
   {
    return 0;
   }
  }
 }

 for (i = 0; i < numareas; i++)
 {
  if (!numareafrontfaces[i] || !numareabackfaces[i]) return 0;
 }

 if (!AAS_ConnectedAreas(frontareanums, numfrontareas)) return 0;

 if (!AAS_ConnectedAreas(backareanums, numbackareas)) return 0;

 for (i = 0; i < numfrontfaces; i++)
 {
  frontface = &aasworld.faces[frontfacenums[i]];
  for (fen = 0; fen < frontface->numedges; fen++)
  {
   frontedgenum = abs(aasworld.edgeindex[frontface->firstedge + fen]);
   for (j = 0; j < numbackfaces; j++)
   {
    backface = &aasworld.faces[backfacenums[j]];
    for (ben = 0; ben < backface->numedges; ben++)
    {
     backedgenum = abs(aasworld.edgeindex[backface->firstedge + ben]);
     if (frontedgenum == backedgenum) break;
    }
    if (ben != backface->numedges) break;
   }
   if (j != numbackfaces) break;
  }
  if (fen != frontface->numedges) break;
 }
 if (i != numfrontfaces) return 0;

 for (i = 0; i < numareas; i++)
 {
  aasworld.areasettings[areanums[i]].contents |= AREACONTENTS_CLUSTERPORTAL;

  aasworld.areasettings[areanums[i]].contents |= AREACONTENTS_ROUTEPORTAL;
  Log_Write("possible portal: %d\r\n", areanums[i]);
 }

 return numareas;
}
