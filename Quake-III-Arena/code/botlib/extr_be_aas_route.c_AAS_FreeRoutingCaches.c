
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * areacontentstravelflags; int * reachabilityareaindex; int * reachabilityareas; int * portalupdate; int * areaupdate; int * reversedreachability; int * portalmaxtraveltimes; int * areatraveltimes; } ;


 int AAS_FreeAllClusterAreaCache () ;
 int AAS_FreeAllPortalCache () ;
 int FreeMemory (int *) ;
 TYPE_1__ aasworld ;

void AAS_FreeRoutingCaches(void)
{

 AAS_FreeAllClusterAreaCache();

 AAS_FreeAllPortalCache();

 if (aasworld.areatraveltimes) FreeMemory(aasworld.areatraveltimes);
 aasworld.areatraveltimes = ((void*)0);

 if (aasworld.portalmaxtraveltimes) FreeMemory(aasworld.portalmaxtraveltimes);
 aasworld.portalmaxtraveltimes = ((void*)0);

 if (aasworld.reversedreachability) FreeMemory(aasworld.reversedreachability);
 aasworld.reversedreachability = ((void*)0);

 if (aasworld.areaupdate) FreeMemory(aasworld.areaupdate);
 aasworld.areaupdate = ((void*)0);
 if (aasworld.portalupdate) FreeMemory(aasworld.portalupdate);
 aasworld.portalupdate = ((void*)0);

 if (aasworld.reachabilityareas) FreeMemory(aasworld.reachabilityareas);
 aasworld.reachabilityareas = ((void*)0);

 if (aasworld.reachabilityareaindex) FreeMemory(aasworld.reachabilityareaindex);
 aasworld.reachabilityareaindex = ((void*)0);

 if (aasworld.areacontentstravelflags) FreeMemory(aasworld.areacontentstravelflags);
 aasworld.areacontentstravelflags = ((void*)0);
}
