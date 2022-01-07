
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numareas; TYPE_1__* areasettings; } ;
struct TYPE_3__ {int numreachableareas; } ;


 int AAS_Error (char*,int) ;
 TYPE_2__ aasworld ;

int AAS_AreaReachability(int areanum)
{
 if (areanum < 0 || areanum >= aasworld.numareas)
 {
  AAS_Error("AAS_AreaReachability: areanum %d out of range", areanum);
  return 0;
 }
 return aasworld.areasettings[areanum].numreachableareas;
}
