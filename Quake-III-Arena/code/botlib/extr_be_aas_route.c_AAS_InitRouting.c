
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AAS_CalculateAreaTravelTimes () ;
 int AAS_CreateReversedReachability () ;
 int AAS_InitAreaContentsTravelFlags () ;
 int AAS_InitClusterAreaCache () ;
 int AAS_InitPortalCache () ;
 int AAS_InitPortalMaxTravelTimes () ;
 int AAS_InitReachabilityAreas () ;
 int AAS_InitRoutingUpdate () ;
 int AAS_InitTravelFlagFromType () ;
 int AAS_ReadRouteCache () ;
 scalar_t__ LibVarValue (char*,char*) ;
 int max_routingcachesize ;
 scalar_t__ numareacacheupdates ;
 scalar_t__ numportalcacheupdates ;
 scalar_t__ routingcachesize ;

void AAS_InitRouting(void)
{
 AAS_InitTravelFlagFromType();

 AAS_InitAreaContentsTravelFlags();

 AAS_InitRoutingUpdate();

 AAS_CreateReversedReachability();

 AAS_InitClusterAreaCache();

 AAS_InitPortalCache();

 AAS_CalculateAreaTravelTimes();

 AAS_InitPortalMaxTravelTimes();

 AAS_InitReachabilityAreas();






 routingcachesize = 0;
 max_routingcachesize = 1024 * (int) LibVarValue("max_routingcache", "4096");

 AAS_ReadRouteCache();
}
