
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int* faceoptimizeindex; int* edgeoptimizeindex; } ;
typedef TYPE_2__ optimized_t ;
struct TYPE_11__ {int numareas; int reachabilitysize; TYPE_1__* reachability; } ;
struct TYPE_10__ {int (* Print ) (int ,char*) ;} ;
struct TYPE_8__ {int traveltype; int facenum; int edgenum; } ;


 int AAS_OptimizeAlloc (TYPE_2__*) ;
 int AAS_OptimizeArea (TYPE_2__*,int) ;
 int AAS_OptimizeStore (TYPE_2__*) ;
 int PRT_MESSAGE ;
 int TRAVELTYPE_MASK ;
 int TRAVEL_ELEVATOR ;
 int TRAVEL_FUNCBOB ;
 int TRAVEL_JUMPPAD ;
 TYPE_4__ aasworld ;
 size_t abs (int) ;
 TYPE_3__ botimport ;
 int stub1 (int ,char*) ;

void AAS_Optimize(void)
{
 int i, sign;
 optimized_t optimized;

 AAS_OptimizeAlloc(&optimized);
 for (i = 1; i < aasworld.numareas; i++)
 {
  AAS_OptimizeArea(&optimized, i);
 }

 for (i = 0; i < aasworld.reachabilitysize; i++)
 {


  if ((aasworld.reachability[i].traveltype & TRAVELTYPE_MASK) == TRAVEL_ELEVATOR) continue;

  if ((aasworld.reachability[i].traveltype & TRAVELTYPE_MASK) == TRAVEL_JUMPPAD) continue;

  if ((aasworld.reachability[i].traveltype & TRAVELTYPE_MASK) == TRAVEL_FUNCBOB) continue;

  sign = aasworld.reachability[i].facenum;
  aasworld.reachability[i].facenum = optimized.faceoptimizeindex[abs(aasworld.reachability[i].facenum)];
  if (sign < 0) aasworld.reachability[i].facenum = -aasworld.reachability[i].facenum;
  sign = aasworld.reachability[i].edgenum;
  aasworld.reachability[i].edgenum = optimized.edgeoptimizeindex[abs(aasworld.reachability[i].edgenum)];
  if (sign < 0) aasworld.reachability[i].edgenum = -aasworld.reachability[i].edgenum;
 }

 AAS_OptimizeStore(&optimized);

 botimport.Print(PRT_MESSAGE, "AAS data optimized.\n");
}
