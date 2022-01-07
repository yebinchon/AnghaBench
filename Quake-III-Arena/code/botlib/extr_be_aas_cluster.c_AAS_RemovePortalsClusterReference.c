
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numportals; TYPE_1__* portals; } ;
struct TYPE_3__ {int frontcluster; int backcluster; } ;


 TYPE_2__ aasworld ;

void AAS_RemovePortalsClusterReference(int clusternum)
{
 int portalnum;

 for (portalnum = 1; portalnum < aasworld.numportals; portalnum++)
 {
  if (aasworld.portals[portalnum].frontcluster == clusternum)
  {
   aasworld.portals[portalnum].frontcluster = 0;
  }
  if (aasworld.portals[portalnum].backcluster == clusternum)
  {
   aasworld.portals[portalnum].backcluster = 0;
  }
 }
}
