
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int startareatraveltimes ;
struct TYPE_12__ {int areanum; unsigned short* areatraveltimes; unsigned short tmptraveltime; scalar_t__ inlist; struct TYPE_12__* next; struct TYPE_12__* prev; } ;
typedef TYPE_3__ aas_routingupdate_t ;
struct TYPE_13__ {size_t cluster; int travelflags; int areanum; unsigned short starttraveltime; unsigned short* traveltimes; int* reachabilities; } ;
typedef TYPE_4__ aas_routingcache_t ;
struct TYPE_14__ {TYPE_6__* first; } ;
typedef TYPE_5__ aas_reversedreachability_t ;
struct TYPE_15__ {int linknum; int areanum; struct TYPE_15__* next; } ;
typedef TYPE_6__ aas_reversedlink_t ;
struct TYPE_16__ {size_t areanum; unsigned short traveltime; int traveltype; } ;
typedef TYPE_7__ aas_reachability_t ;
struct TYPE_17__ {unsigned short*** areatraveltimes; TYPE_2__* areasettings; TYPE_3__* areaupdate; TYPE_7__* reachability; TYPE_5__* reversedreachability; int frameroutingupdates; TYPE_1__* clusters; } ;
struct TYPE_11__ {int areaflags; int cluster; int firstreachablearea; } ;
struct TYPE_10__ {int numreachabilityareas; } ;


 int AAS_AreaContentsTravelFlags_inline (size_t) ;
 int AAS_ClusterAreaNum (size_t,int) ;
 int AAS_TravelFlagForType_inline (int ) ;
 int AREA_DISABLED ;
 int Com_Memset (unsigned short*,int ,int) ;
 TYPE_8__ aasworld ;
 int numareacacheupdates ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

void AAS_UpdateAreaRoutingCache(aas_routingcache_t *areacache)
{
 int i, nextareanum, cluster, badtravelflags, clusterareanum, linknum;
 int numreachabilityareas;
 unsigned short int t, startareatraveltimes[128];
 aas_routingupdate_t *updateliststart, *updatelistend, *curupdate, *nextupdate;
 aas_reachability_t *reach;
 aas_reversedreachability_t *revreach;
 aas_reversedlink_t *revlink;





 numreachabilityareas = aasworld.clusters[areacache->cluster].numreachabilityareas;

 aasworld.frameroutingupdates++;



 badtravelflags = ~areacache->travelflags;

 clusterareanum = AAS_ClusterAreaNum(areacache->cluster, areacache->areanum);
 if (clusterareanum >= numreachabilityareas) return;

 Com_Memset(startareatraveltimes, 0, sizeof(startareatraveltimes));

 curupdate = &aasworld.areaupdate[clusterareanum];
 curupdate->areanum = areacache->areanum;

 curupdate->areatraveltimes = startareatraveltimes;
 curupdate->tmptraveltime = areacache->starttraveltime;

 areacache->traveltimes[clusterareanum] = areacache->starttraveltime;

 curupdate->next = ((void*)0);
 curupdate->prev = ((void*)0);
 updateliststart = curupdate;
 updatelistend = curupdate;

 while (updateliststart)
 {
  curupdate = updateliststart;

  if (curupdate->next) curupdate->next->prev = ((void*)0);
  else updatelistend = ((void*)0);
  updateliststart = curupdate->next;

  curupdate->inlist = qfalse;

  revreach = &aasworld.reversedreachability[curupdate->areanum];

  for (i = 0, revlink = revreach->first; revlink; revlink = revlink->next, i++)
  {
   linknum = revlink->linknum;
   reach = &aasworld.reachability[linknum];

   if (AAS_TravelFlagForType_inline(reach->traveltype) & badtravelflags) continue;

   if (aasworld.areasettings[reach->areanum].areaflags & AREA_DISABLED) continue;

   if (AAS_AreaContentsTravelFlags_inline(reach->areanum) & badtravelflags) continue;

   nextareanum = revlink->areanum;

   cluster = aasworld.areasettings[nextareanum].cluster;

   if (cluster > 0 && cluster != areacache->cluster) continue;

   clusterareanum = AAS_ClusterAreaNum(areacache->cluster, nextareanum);
   if (clusterareanum >= numreachabilityareas) continue;


   t = curupdate->tmptraveltime +

      curupdate->areatraveltimes[i] +
       reach->traveltime;

   if (!areacache->traveltimes[clusterareanum] ||
     areacache->traveltimes[clusterareanum] > t)
   {
    areacache->traveltimes[clusterareanum] = t;
    areacache->reachabilities[clusterareanum] = linknum - aasworld.areasettings[nextareanum].firstreachablearea;
    nextupdate = &aasworld.areaupdate[clusterareanum];
    nextupdate->areanum = nextareanum;
    nextupdate->tmptraveltime = t;

    nextupdate->areatraveltimes = aasworld.areatraveltimes[nextareanum][linknum -
             aasworld.areasettings[nextareanum].firstreachablearea];
    if (!nextupdate->inlist)
    {



     nextupdate->next = ((void*)0);
     nextupdate->prev = updatelistend;
     if (updatelistend) updatelistend->next = nextupdate;
     else updateliststart = nextupdate;
     updatelistend = nextupdate;
     nextupdate->inlist = qtrue;
    }
   }
  }
 }
}
