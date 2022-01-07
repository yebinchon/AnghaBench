
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {float time; int numframes; scalar_t__ frameroutingupdates; } ;
struct TYPE_3__ {scalar_t__ value; } ;


 int AAS_ContinueInit (float) ;
 int AAS_InvalidateEntities () ;
 int AAS_RoutingInfo () ;
 int AAS_UnlinkInvalidEntities () ;
 int AAS_WriteRouteCache () ;
 int BLERR_NOERROR ;
 scalar_t__ LibVarGetValue (char*) ;
 int LibVarSet (char*,char*) ;
 int PrintMemoryLabels () ;
 int PrintUsedMemorySize () ;
 TYPE_2__ aasworld ;
 scalar_t__ bot_developer ;
 TYPE_1__* saveroutingcache ;

int AAS_StartFrame(float time)
{
 aasworld.time = time;

 AAS_UnlinkInvalidEntities();

 AAS_InvalidateEntities();

 AAS_ContinueInit(time);

 aasworld.frameroutingupdates = 0;

 if (bot_developer)
 {
  if (LibVarGetValue("showcacheupdates"))
  {
   AAS_RoutingInfo();
   LibVarSet("showcacheupdates", "0");
  }
  if (LibVarGetValue("showmemoryusage"))
  {
   PrintUsedMemorySize();
   LibVarSet("showmemoryusage", "0");
  }
  if (LibVarGetValue("memorydump"))
  {
   PrintMemoryLabels();
   LibVarSet("memorydump", "0");
  }
 }

 if (saveroutingcache->value)
 {
  AAS_WriteRouteCache();
  LibVarSet("saveroutingcache", "0");
 }

 aasworld.numframes++;
 return BLERR_NOERROR;
}
