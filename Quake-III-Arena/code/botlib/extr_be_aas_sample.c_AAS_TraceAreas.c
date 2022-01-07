
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_6__ {float* start; float* end; int planenum; int nodenum; } ;
typedef TYPE_1__ aas_tracestack_t ;
struct TYPE_7__ {int type; float dist; int normal; } ;
typedef TYPE_2__ aas_plane_t ;
struct TYPE_8__ {size_t planenum; int* children; } ;
typedef TYPE_3__ aas_node_t ;
struct TYPE_10__ {int numareasettings; int numnodes; TYPE_2__* planes; TYPE_3__* nodes; int loaded; } ;
struct TYPE_9__ {int (* Print ) (int ,char*) ;} ;


 float DotProduct (float*,int ) ;
 int PRT_ERROR ;
 int VectorCopy (float*,float*) ;
 TYPE_5__ aasworld ;
 TYPE_4__ botimport ;
 int stub1 (int ,char*,int) ;
 int stub2 (int ,char*) ;
 int stub3 (int ,char*) ;
 int stub4 (int ,char*) ;
 int stub5 (int ,char*) ;
 int stub6 (int ,char*) ;

int AAS_TraceAreas(vec3_t start, vec3_t end, int *areas, vec3_t *points, int maxareas)
{
 int side, nodenum, tmpplanenum;
 int numareas;
 float front, back, frac;
 vec3_t cur_start, cur_end, cur_mid;
 aas_tracestack_t tracestack[127];
 aas_tracestack_t *tstack_p;
 aas_node_t *aasnode;
 aas_plane_t *plane;

 numareas = 0;
 areas[0] = 0;
 if (!aasworld.loaded) return numareas;

 tstack_p = tracestack;

 VectorCopy(start, tstack_p->start);
 VectorCopy(end, tstack_p->end);
 tstack_p->planenum = 0;

 tstack_p->nodenum = 1;
 tstack_p++;

 while (1)
 {

  tstack_p--;


  if (tstack_p < tracestack)
  {
   return numareas;
  }

  nodenum = tstack_p->nodenum;

  if (nodenum < 0)
  {
   areas[numareas] = -nodenum;
   if (points) VectorCopy(tstack_p->start, points[numareas]);
   numareas++;
   if (numareas >= maxareas) return numareas;
   continue;
  }

  if (!nodenum)
  {
   continue;
  }
  aasnode = &aasworld.nodes[nodenum];

  VectorCopy(tstack_p->start, cur_start);

  VectorCopy(tstack_p->end, cur_end);

  plane = &aasworld.planes[aasnode->planenum];

  switch(plane->type)
  {
   default:
   {
    front = DotProduct(cur_start, plane->normal) - plane->dist;
    back = DotProduct(cur_end, plane->normal) - plane->dist;
    break;
   }
  }



  if (front > 0 && back > 0)
  {


   tstack_p->nodenum = aasnode->children[0];
   tstack_p++;
   if (tstack_p >= &tracestack[127])
   {
    botimport.Print(PRT_ERROR, "AAS_TraceAreas: stack overflow\n");
    return numareas;
   }
  }


  else if (front <= 0 && back <= 0)
  {


   tstack_p->nodenum = aasnode->children[1];
   tstack_p++;
   if (tstack_p >= &tracestack[127])
   {
    botimport.Print(PRT_ERROR, "AAS_TraceAreas: stack overflow\n");
    return numareas;
   }
  }

  else
  {
   tmpplanenum = tstack_p->planenum;


   if (front < 0) frac = (front)/(front-back);
   else frac = (front)/(front-back);
   if (frac < 0) frac = 0;
   else if (frac > 1) frac = 1;


   cur_mid[0] = cur_start[0] + (cur_end[0] - cur_start[0]) * frac;
   cur_mid[1] = cur_start[1] + (cur_end[1] - cur_start[1]) * frac;
   cur_mid[2] = cur_start[2] + (cur_end[2] - cur_start[2]) * frac;



   side = front < 0;

   VectorCopy(cur_mid, tstack_p->start);


   tstack_p->planenum = aasnode->planenum;
   tstack_p->nodenum = aasnode->children[!side];
   tstack_p++;
   if (tstack_p >= &tracestack[127])
   {
    botimport.Print(PRT_ERROR, "AAS_TraceAreas: stack overflow\n");
    return numareas;
   }



   VectorCopy(cur_start, tstack_p->start);
   VectorCopy(cur_mid, tstack_p->end);
   tstack_p->planenum = tmpplanenum;
   tstack_p->nodenum = aasnode->children[side];
   tstack_p++;
   if (tstack_p >= &tracestack[127])
   {
    botimport.Print(PRT_ERROR, "AAS_TraceAreas: stack overflow\n");
    return numareas;
   }
  }
 }

}
