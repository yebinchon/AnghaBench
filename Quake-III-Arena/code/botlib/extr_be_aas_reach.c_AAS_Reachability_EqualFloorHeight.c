
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_11__ {int normal; } ;
typedef TYPE_1__ aas_plane_t ;
struct TYPE_12__ {int areanum; int edgenum; double* start; double* end; int traveltime; struct TYPE_12__* next; int traveltype; scalar_t__ facenum; } ;
typedef TYPE_2__ aas_lreachability_t ;
struct TYPE_13__ {int faceflags; int numedges; int firstedge; size_t planenum; } ;
typedef TYPE_3__ aas_face_t ;
struct TYPE_14__ {size_t* v; } ;
typedef TYPE_4__ aas_edge_t ;
struct TYPE_15__ {scalar_t__* mins; scalar_t__* maxs; int numfaces; int firstface; } ;
typedef TYPE_5__ aas_area_t ;
struct TYPE_17__ {scalar_t__ rs_startcrouch; } ;
struct TYPE_16__ {int* faceindex; int* edgeindex; TYPE_1__* planes; int * vertexes; TYPE_4__* edges; TYPE_3__* faces; TYPE_5__* areas; } ;


 TYPE_2__* AAS_AllocReachability () ;
 scalar_t__ AAS_AreaCrouch (int) ;
 int AAS_AreaGrounded (int) ;
 int Com_Memset (TYPE_2__*,int ,int) ;
 int CrossProduct (double*,int ,double*) ;
 float DotProduct (double*,double*) ;
 int FACE_GROUND ;
 int INSIDEUNITS_WALKEND ;
 int INSIDEUNITS_WALKSTART ;
 int TRAVEL_WALK ;
 int VectorAdd (int ,int ,double*) ;
 int VectorCopy (double*,double*) ;
 int VectorInverse (double*) ;
 float VectorLength (double*) ;
 int VectorMA (double*,int ,double*,double*) ;
 int VectorNormalize (double*) ;
 int VectorScale (double*,double,double*) ;
 int VectorSubtract (int ,int ,double*) ;
 TYPE_8__ aassettings ;
 TYPE_7__ aasworld ;
 size_t abs (int) ;
 TYPE_2__** areareachability ;
 int qfalse ;
 int qtrue ;
 int reach_equalfloor ;

int AAS_Reachability_EqualFloorHeight(int area1num, int area2num)
{
 int i, j, edgenum, edgenum1, edgenum2, foundreach, side;
 float height, bestheight, length, bestlength;
 vec3_t dir, start, end, normal, invgravity, gravitydirection = {0, 0, -1};
 vec3_t edgevec;
 aas_area_t *area1, *area2;
 aas_face_t *face1, *face2;
 aas_edge_t *edge;
 aas_plane_t *plane2;
 aas_lreachability_t lr, *lreach;

 if (!AAS_AreaGrounded(area1num) || !AAS_AreaGrounded(area2num)) return qfalse;

 area1 = &aasworld.areas[area1num];
 area2 = &aasworld.areas[area2num];

 for (i = 0; i < 2; i++)
 {
  if (area1->mins[i] > area2->maxs[i] + 10) return qfalse;
  if (area1->maxs[i] < area2->mins[i] - 10) return qfalse;
 }

 if (area2->mins[2] > area1->maxs[2]) return qfalse;

 VectorCopy(gravitydirection, invgravity);
 VectorInverse(invgravity);

 bestheight = 99999;
 bestlength = 0;
 foundreach = qfalse;
 Com_Memset(&lr, 0, sizeof(aas_lreachability_t));



 for (i = 0; i < area1->numfaces; i++)
 {
  face1 = &aasworld.faces[abs(aasworld.faceindex[area1->firstface + i])];
  if (!(face1->faceflags & FACE_GROUND)) continue;

  for (j = 0; j < area2->numfaces; j++)
  {
   face2 = &aasworld.faces[abs(aasworld.faceindex[area2->firstface + j])];
   if (!(face2->faceflags & FACE_GROUND)) continue;

   for (edgenum1 = 0; edgenum1 < face1->numedges; edgenum1++)
   {
    for (edgenum2 = 0; edgenum2 < face2->numedges; edgenum2++)
    {
     if (abs(aasworld.edgeindex[face1->firstedge + edgenum1]) !=
       abs(aasworld.edgeindex[face2->firstedge + edgenum2]))
         continue;
     edgenum = aasworld.edgeindex[face1->firstedge + edgenum1];
     side = edgenum < 0;
     edge = &aasworld.edges[abs(edgenum)];

     VectorSubtract(aasworld.vertexes[edge->v[1]],
        aasworld.vertexes[edge->v[0]], dir);
     length = VectorLength(dir);

     VectorAdd(aasworld.vertexes[edge->v[0]],
        aasworld.vertexes[edge->v[1]], start);
     VectorScale(start, 0.5, start);
     VectorCopy(start, end);




     VectorSubtract(aasworld.vertexes[edge->v[side]],
        aasworld.vertexes[edge->v[!side]], edgevec);
     plane2 = &aasworld.planes[face2->planenum];
     CrossProduct(edgevec, plane2->normal, normal);
     VectorNormalize(normal);


     VectorMA(end, INSIDEUNITS_WALKEND, normal, end);
     VectorMA(start, INSIDEUNITS_WALKSTART, normal, start);
     end[2] += 0.125;

     height = DotProduct(invgravity, start);






     if (height < bestheight ||
       (height < bestheight + 1 && length > bestlength))
     {
      bestheight = height;
      bestlength = length;

      lr.areanum = area2num;
      lr.facenum = 0;
      lr.edgenum = edgenum;
      VectorCopy(start, lr.start);
      VectorCopy(end, lr.end);
      lr.traveltype = TRAVEL_WALK;
      lr.traveltime = 1;
      foundreach = qtrue;
     }
    }
   }
  }
 }
 if (foundreach)
 {

  lreach = AAS_AllocReachability();
  if (!lreach) return qfalse;
  lreach->areanum = lr.areanum;
  lreach->facenum = lr.facenum;
  lreach->edgenum = lr.edgenum;
  VectorCopy(lr.start, lreach->start);
  VectorCopy(lr.end, lreach->end);
  lreach->traveltype = lr.traveltype;
  lreach->traveltime = lr.traveltime;
  lreach->next = areareachability[area1num];
  areareachability[area1num] = lreach;

  if (!AAS_AreaCrouch(area1num) && AAS_AreaCrouch(area2num))
  {
   lreach->traveltime += aassettings.rs_startcrouch;
  }
  reach_equalfloor++;
  return qtrue;
 }
 return qfalse;
}
