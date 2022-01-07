
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int aas_routingupdate_t ;
struct TYPE_4__ {int numclusters; int numportals; int * portalupdate; int * areaupdate; TYPE_1__* clusters; } ;
struct TYPE_3__ {int numreachabilityareas; } ;


 int FreeMemory (int *) ;
 scalar_t__ GetClearedMemory (int) ;
 TYPE_2__ aasworld ;

void AAS_InitRoutingUpdate(void)
{
 int i, maxreachabilityareas;


 if (aasworld.areaupdate) FreeMemory(aasworld.areaupdate);

 maxreachabilityareas = 0;
 for (i = 0; i < aasworld.numclusters; i++)
 {
  if (aasworld.clusters[i].numreachabilityareas > maxreachabilityareas)
  {
   maxreachabilityareas = aasworld.clusters[i].numreachabilityareas;
  }
 }

 aasworld.areaupdate = (aas_routingupdate_t *) GetClearedMemory(
         maxreachabilityareas * sizeof(aas_routingupdate_t));

 if (aasworld.portalupdate) FreeMemory(aasworld.portalupdate);

 aasworld.portalupdate = (aas_routingupdate_t *) GetClearedMemory(
         (aasworld.numportals+1) * sizeof(aas_routingupdate_t));
}
