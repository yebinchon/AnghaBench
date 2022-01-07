
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int numareas; TYPE_1__* areasettings; } ;
struct TYPE_5__ {int (* Print ) (int ,char*,int) ;} ;
struct TYPE_4__ {int areaflags; } ;


 int AAS_RemoveRoutingCacheUsingArea (int) ;
 int AREA_DISABLED ;
 int PRT_ERROR ;
 TYPE_3__ aasworld ;
 scalar_t__ bot_developer ;
 TYPE_2__ botimport ;
 int stub1 (int ,char*,int) ;

int AAS_EnableRoutingArea(int areanum, int enable)
{
 int flags;

 if (areanum <= 0 || areanum >= aasworld.numareas)
 {
  if (bot_developer)
  {
   botimport.Print(PRT_ERROR, "AAS_EnableRoutingArea: areanum %d out of range\n", areanum);
  }
  return 0;
 }
 flags = aasworld.areasettings[areanum].areaflags & AREA_DISABLED;
 if (enable < 0)
  return !flags;

 if (enable)
  aasworld.areasettings[areanum].areaflags &= ~AREA_DISABLED;
 else
  aasworld.areasettings[areanum].areaflags |= AREA_DISABLED;

 if ( (flags & AREA_DISABLED) != (aasworld.areasettings[areanum].areaflags & AREA_DISABLED) )
 {

  AAS_RemoveRoutingCacheUsingArea( areanum );
 }
 return !flags;
}
