
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_9__ {int* mins; int* maxs; } ;
typedef TYPE_1__ q1_dnode_t ;
struct TYPE_10__ {int* mins; int* maxs; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_11__ {size_t* headnode; } ;


 int AddPointToBounds (int*,int *,int *) ;
 TYPE_2__* BrushFromBounds (int*,int*) ;
 int Log_Print (char*,int ,int ,int ,int ,int ,int ) ;
 TYPE_2__* Q1_CreateBrushes_r (TYPE_2__*,size_t) ;
 int VectorCopy (int*,int*) ;
 int * map_maxs ;
 int * map_mins ;
 TYPE_4__* q1_dmodels ;
 TYPE_1__* q1_dnodes ;
 scalar_t__ q1_numbrushes ;
 int qprintf (char*,...) ;

bspbrush_t *Q1_CreateBrushesFromBSP(int modelnum)
{
 bspbrush_t *brushlist;
 bspbrush_t *brush;
 q1_dnode_t *headnode;
 vec3_t mins, maxs;
 int i;


 headnode = &q1_dnodes[q1_dmodels[modelnum].headnode[0]];

 VectorCopy(headnode->mins, mins);
 VectorCopy(headnode->maxs, maxs);

 for (i = 0; i < 3; i++)
 {
  mins[i] -= 8;
  maxs[i] += 8;
 }

 AddPointToBounds(mins, map_mins, map_maxs);
 AddPointToBounds(maxs, map_mins, map_maxs);

 if (!modelnum)
 {
  Log_Print("brush size: %5.0f,%5.0f,%5.0f to %5.0f,%5.0f,%5.0f\n",
       map_mins[0], map_mins[1], map_mins[2],
       map_maxs[0], map_maxs[1], map_maxs[2]);
 }

 brush = BrushFromBounds(mins, maxs);
 VectorCopy(mins, brush->mins);
 VectorCopy(maxs, brush->maxs);






 brushlist = Q1_CreateBrushes_r(brush, q1_dmodels[modelnum].headnode[0]);





 return brushlist;
}
