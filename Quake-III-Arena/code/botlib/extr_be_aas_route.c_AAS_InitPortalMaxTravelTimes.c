
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* portalmaxtraveltimes; int numportals; } ;


 int AAS_PortalMaxTravelTime (int) ;
 int FreeMemory (int*) ;
 scalar_t__ GetClearedMemory (int) ;
 TYPE_1__ aasworld ;

void AAS_InitPortalMaxTravelTimes(void)
{
 int i;

 if (aasworld.portalmaxtraveltimes) FreeMemory(aasworld.portalmaxtraveltimes);

 aasworld.portalmaxtraveltimes = (int *) GetClearedMemory(aasworld.numportals * sizeof(int));

 for (i = 0; i < aasworld.numportals; i++)
 {
  aasworld.portalmaxtraveltimes[i] = AAS_PortalMaxTravelTime(i);

 }
}
