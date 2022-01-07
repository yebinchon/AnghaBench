
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int reachabilitysize; TYPE_1__* reachability; } ;
struct TYPE_3__ {int traveltype; int facenum; } ;


 int TRAVELTYPE_MASK ;
 int TRAVEL_ELEVATOR ;
 int TRAVEL_FUNCBOB ;
 TYPE_2__ aasworld ;

int AAS_NextModelReachability(int num, int modelnum)
{
 int i;

 if (num <= 0) num = 1;
 else if (num >= aasworld.reachabilitysize) return 0;
 else num++;

 for (i = num; i < aasworld.reachabilitysize; i++)
 {
  if ((aasworld.reachability[i].traveltype & TRAVELTYPE_MASK) == TRAVEL_ELEVATOR)
  {
   if (aasworld.reachability[i].facenum == modelnum) return i;
  }
  else if ((aasworld.reachability[i].traveltype & TRAVELTYPE_MASK) == TRAVEL_FUNCBOB)
  {
   if ((aasworld.reachability[i].facenum & 0x0000FFFF) == modelnum) return i;
  }
 }
 return 0;
}
